/* $Id: insertsort.c,v 1.2 2005/04/04 11:34:58 csg Exp $ */

/*************************************************************************/
/*                                                                       */
/*   SNU-RT Benchmark Suite for Worst Case Timing Analysis               */
/*   =====================================================               */
/*                              Collected and Modified by S.-S. Lim      */
/*                                           sslim@archi.snu.ac.kr       */
/*                                         Real-Time Research Group      */
/*                                        Seoul National University      */
/*                                                                       */
/*                                                                       */
/*        < Features > - restrictions for our experimental environment   */
/*                                                                       */
/*          1. Completely structured.                                    */
/*               - There are no unconditional jumps.                     */
/*               - There are no exit from loop bodies.                   */
/*                 (There are no 'break' or 'return' in loop bodies)     */
/*          2. No 'switch' statements.                                   */
/*          3. No 'do..while' statements.                                */
/*          4. Expressions are restricted.                               */
/*               - There are no multiple expressions joined by 'or',     */
/*                'and' operations.                                      */
/*          5. No library calls.                                         */
/*               - All the functions needed are implemented in the       */
/*                 source file.                                          */
/*                                                                       */
/*                                                                       */
/*************************************************************************/
/*                                                                       */
/*  FILE: insertsort.c                                                   */
/*  SOURCE : Public Domain Code                                          */
/*                                                                       */
/*  DESCRIPTION :                                                        */
/*                                                                       */
/*     Insertion sort for 10 integer numbers.                            */
/*     The integer array a[] is initialized in main function.            */
/*                                                                       */
/*  REMARK :                                                             */
/*                                                                       */
/*  EXECUTION TIME :                                                     */
/*                                                                       */
/*                                                                       */
/*************************************************************************/

#ifdef DEBUG
int cnt1, cnt2;
#endif

unsigned int a_a[11];

int insertsort_main() {
  int i, j, temp;

  a_a[0] = 0; /* assume all data is positive */
  a_a[1] = 11;
  a_a[2] = 10;
  a_a[3] = 9;
  a_a[4] = 8;
  a_a[5] = 7;
  a_a[6] = 6;
  a_a[7] = 5;
  a_a[8] = 4;
  a_a[9] = 3;
  a_a[10] = 2;
  i = 2;
  while (i <= 10) {
#ifdef DEBUG
    cnt1++;
#endif
    j = i;
#ifdef DEBUG
    cnt2 = 0;
#endif
    while (a_a[j] < a_a[j - 1]) {
#ifdef DEBUG
      cnt2++;
#endif
      temp = a_a[j];
      a_a[j] = a_a[j - 1];
      a_a[j - 1] = temp;
      j--;
    }
#ifdef DEBUG
    printf("Inner Loop Counts: %d\n", cnt2);
#endif
    i++;
  }
#ifdef DEBUG
  printf("Outer Loop : %d ,  Inner Loop : %d\n", cnt1, cnt2);
#endif
  return 1;
}
