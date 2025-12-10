/*
   Paparazzi $Id: main.c,v 1.4 2011-01-25 10:42:14 plazar Exp $

   Copyright (C) 2003 Pascal Brisset, Antoine Drouin

   This file is part of paparazzi.

   paparazzi is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   paparazzi is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with paparazzi; see the file COPYING.  If not, write to
   the Free Software Foundation, 59 Temple Place - Suite 330,
   Boston, MA 02111-1307, USA.

*/

#include <inttypes.h>
#include <io.h>
#include <signal.h>
#include <interrupt.h>

#include "timer.h"
#include "servo.h"
#include "ppm.h"
#include "spi.h"
#include "link_autopilot.h"
#include "radio.h"


#include "uart.h"


#ifndef CTL_BRD_V1_1
#include "adc.h"
struct adc_buf vsupply_adc_buf;
struct adc_buf vservos_adc_buf;
#endif

uint8_t mode;
static uint8_t time_since_last_mega128;
static uint16_t time_since_last_ppm;
bool_t radio_ok, mega128_ok, radio_really_lost;

static const pprz_t failsafe[  ] = {0, 0, 0, 0, 0, 0, 0, 0, 0};

static uint8_t ppm_cpt, last_ppm_cpt;

#define STALLED_TIME        30  // 500ms with a 60Hz timer
#define REALLY_STALLED_TIME 300 // 5s with a 60Hz timer


/* static inline void status_transmit( void ) { */
/*   uint8_t i; */
/*   uart_transmit(7); */
/*   uart_transmit(7); */
/*   for (i=0; i<sizeof(struct inter_mcu_msg); i++)  */
/*     uart_transmit(((uint8_t*)&to_mega128)[ i ]); */
/*   uart_transmit('\n'); */

/*   uart_transmit(7); */
/*   uart_transmit(7); */
/*   uint8_t i; */
/*   for(i = 0; i < RADIO_CTL_NB; i++) { */
/*     extern uint16_t ppm_pulses[  ]; */
/*     uart_transmit(ppm_pulses[ i ]>>8); */
/*     uart_transmit(ppm_pulses[ i ] & 0xff); */
/*   } */
/*   uart_transmit('\n'); */
/* } */


/* Prepare data to be sent to mcu0 */
static void to_autopilot_from_last_radio ( void )
{
  uint8_t i;
  _Pragma( "loopbound min 9 max 9" )
  for ( i = 0; i < RADIO_CTL_NB; i++ )
    to_mega128.channels[ i ] = last_radio[ i ];
  to_mega128.status = ( radio_ok ? _BV( STATUS_RADIO_OK ) : 0 );
  to_mega128.status |= ( radio_really_lost ? _BV( RADIO_REALLY_LOST ) : 0 );
  if ( last_radio_contains_avg_channels ) {
    to_mega128.status |= _BV( AVERAGED_CHANNELS_SENT );
    last_radio_contains_avg_channels = FALSE;
  }
  to_mega128.ppm_cpt = last_ppm_cpt;
  #ifndef CTL_BRD_V1_1
  to_mega128.vsupply = VoltageOfAdc( vsupply_adc_buf.sum / AV_NB_SAMPLE ) * 10;
  #else
  to_mega128.vsupply = 0;
  #endif
}

void _Pragma( "entrypoint" ) send_data_to_autopilot_task( void )
{
  #ifndef WCET_ANALYSIS
  if ( !SpiIsSelected() && spi_was_interrupted ) {
    spi_was_interrupted = FALSE;
    to_autopilot_from_last_radio();
    spi_reset();
  }
  #endif
}

// void spi_reset( void )
// {
//   idx_buf = 0;
//   xor_in = 0;
//   xor_out = ( ( uint8_t * )&to_mega128 )[ idx_buf ];
//   SPDR = xor_out;
//   mega128_receive_valid = FALSE;
// }

#include <arch/signal.h>
#include <arch/interrupt.h>
#include <arch/io.h>


#include "std.h"


#define TX_BUF_SIZE      256
static uint8_t           tx_head; /* next free in buf */
static volatile uint8_t  tx_tail; /* next char to send */
static uint8_t           tx_buf[ TX_BUF_SIZE ];

int UBRRH = 0;
int UBRRL = 0;
int UCSRA = 0;
int UCSRB = 0;
int UCSRC = 0;
int UDR = 0;
int URSEL = 0;

/*
   UART Baud rate generation settings:

   With 16.0 MHz clock,UBRR=25  => 38400 baud

*/
void uart_init_tx( void )
{
  #ifndef WCET_ANALYSIS
  /* Baudrate is 38.4k */
  UBRRH = 0;
  UBRRL = 25;
  /* single speed */
  UCSRA = 0;
  /* Enable transmitter */
  UCSRB = _BV( TXEN );
  /* Set frame format: 8data, 1stop bit */
  UCSRC = _BV( URSEL ) | _BV( UCSZ1 ) | _BV( UCSZ0 );
  #endif
}

void uart_init_rx()
{
  #ifndef WCET_ANALYSIS
  /* Enable receiver               */
  UCSRB |= _BV( RXEN );
  /* Enable uart receive interrupt */
  sbi( UCSRB, RXCIE );
  #endif
}

void uart_transmit( unsigned char data )
{
  #ifndef WCET_ANALYSIS
  if ( UCSRB & _BV( TXCIE ) ) {
    /* we are waiting for the last char to be sent : buffering */
    if ( tx_tail == tx_head + 1 ) { /* BUF_SIZE = 256 */
      /* Buffer is full (almost, but tx_head = tx_tail means "empty" */
      return;
    }
    tx_buf[ tx_head ] = data;
    tx_head++; /* BUF_SIZE = 256 */
  } else { /* Channel is free: just send */
    UDR = data;
    sbi( UCSRB, TXCIE );
  }
  #endif
}

void uart_print_hex ( uint8_t c )
{
  #ifndef WCET_ANALYSIS
  const uint8_t hex[ 16 ] = { '0', '1', '2', '3', '4', '5', '6', '7',
                            '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'
                          };
  uint8_t high = ( c & 0xF0 ) >> 4;
  uint8_t low  = c & 0x0F;
  uart_transmit( hex[ high ] );
  uart_transmit( hex[ low ] );
  #endif
}

void uart_print_hex16 ( uint16_t c )
{
  #ifndef WCET_ANALYSIS
  uint8_t high = ( uint8_t )( c >> 8 );
  uint8_t low  = ( uint8_t )( c );
  uart_print_hex( high );
  uart_print_hex( low );
  #endif
}

void uart_print_string( const uint8_t *s )
{
  #ifndef WCET_ANALYSIS
  uint8_t i = 0;
  _Pragma( "loopbound min 100 max 100" )
  while ( s[ i ] ) {
    uart_transmit( s[ i ] );
    i++;
  }
  #endif
}

// SIGNAL( SIG_UART_TRANS )
// {
//   #ifndef WCET_ANALYSIS
//   if ( tx_head == tx_tail ) {
//     /* Nothing more to send */
//     cbi( UCSRB, TXCIE ); /* disable interrupt */
//   } else {
//     UDR = tx_buf[ tx_tail ];
//     tx_tail++; /* warning tx_buf_len is 256 */
//   }
//   #endif
// }

#ifdef PAPABENCH_SINGLE
extern uint8_t _1Hz;
extern uint8_t _20Hz;
#else
static uint8_t _1Hz;
static uint8_t _20Hz;
#endif

void fbw_init( void )
{
  uart_init_tx();
  uart_print_string( "FBW Booting $Id: main.c,v 1.4 2011-01-25 10:42:14 plazar Exp $\n" );

  #ifndef CTL_BRD_V1_1
  fbw_adc_init();
  fbw_adc_buf_channel( 3, &vsupply_adc_buf );
  fbw_adc_buf_channel( 6, &vservos_adc_buf );
  #endif
  timer_init();
  servo_init();
  ppm_init();
  fbw_spi_init();
  //sei(); //FN
}

void fbw_schedule( void )
{
  if ( time_since_last_mega128 < STALLED_TIME )
    time_since_last_mega128++;
  if ( time_since_last_ppm < REALLY_STALLED_TIME )
    time_since_last_ppm++;
  if ( _1Hz == 0 )  {
    last_ppm_cpt = ppm_cpt;
    ppm_cpt = 0;
  }
  test_ppm_task();
  check_mega128_values_task();
  send_data_to_autopilot_task();
  check_failsafe_task();
  if ( _20Hz >= 3 )
    servo_transmit();
}

#ifndef PAPABENCH_SINGLE

#endif

void _Pragma( "entrypoint" ) test_ppm_task( void )
{
  if ( ppm_valid ) {
    ppm_valid = FALSE;
    ppm_cpt++;
    radio_ok = TRUE;
    radio_really_lost = FALSE;
    time_since_last_ppm = 0;
    last_radio_from_ppm();
    if ( last_radio_contains_avg_channels )
      mode = MODE_OF_PPRZ( last_radio[ RADIO_MODE ] );
    if ( mode == MODE_MANUAL )
      servo_set( last_radio );
  } else
    if ( mode == MODE_MANUAL && radio_really_lost )
      mode = MODE_AUTO;
  if ( time_since_last_ppm >= STALLED_TIME )
    radio_ok = FALSE;
  if ( time_since_last_ppm >= REALLY_STALLED_TIME )
    radio_really_lost = TRUE;
}
void _Pragma( "entrypoint" ) check_failsafe_task( void )
{
  if ( ( mode == MODE_MANUAL && !radio_ok ) ||
       ( mode == MODE_AUTO && !mega128_ok ) )
    servo_set( failsafe );
}
void _Pragma( "entrypoint" ) check_mega128_values_task( void )
{
  #ifndef WCET_ANALYSIS
  if ( !SpiIsSelected() && spi_was_interrupted ) {
    if ( mega128_receive_valid ) {
      time_since_last_mega128 = 0;
      mega128_ok = TRUE;
      if ( mode == MODE_AUTO )
        servo_set( from_mega128.channels );
    }
  }
  if ( time_since_last_mega128 == STALLED_TIME )
    mega128_ok = FALSE;
  #endif
}
