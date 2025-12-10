import subprocess
import os

def run_commands():
    commands = [
        # lab0
        "./lab1.py -s TABLE_V/Liang2012 -p -ops Configuration/2core.txt -m liangy",
        
        # lab1
        "./lab1.py -s TABLE_VI_VII_Fig9_44/Zhang2022 -p -ops Configuration/2core.txt -m zhangw",
        "./lab1.py -s TABLE_VI_VII_Fig9_44/Our -p -ops Configuration/2core.txt -m our",

        # lab2
        "./lab2.py -s Fig7/Liang2012_2 -p -ops Configuration/2core.txt -m liangy -a 2",
        "./lab2.py -s Fig7/Zhang_2022_2 -p -ops Configuration/2core.txt -m zhangw -a 2",
        "./lab2.py -s Fig7/Our_2 -p -ops Configuration/2core.txt -m our -a 2",

        "./lab2.py -s Fig7/Liang2012_4 -p -ops Configuration/2core.txt -m liangy -a 4",
        "./lab2.py -s Fig7/Zhang_2022_4 -p -ops Configuration/2core.txt -m zhangw -a 4",
        "./lab2.py -s Fig7/Our_4 -p -ops Configuration/2core.txt -m our -a 4",

        "./lab2.py -s Fig7/Liang2012_8 -p -ops Configuration/2core.txt -m liangy -a 8",
        "./lab2.py -s Fig7/Zhang_2022_8 -p -ops Configuration/2core.txt -m zhangw -a 8",
        "./lab2.py -s Fig7/Our_8 -p -ops Configuration/2core.txt -m our -a 8",

        # lab3
        "./lab1.py -s Fig8/8core_Zhang2022 -p -ops Configuration/8core.txt -m zhangw",
        "./lab1.py -s Fig8/8core_Our -p -ops Configuration/8core.txt -m our",

        "./lab1.py -s Fig8/6core_Zhang2022 -p -ops Configuration/6core.txt -m zhangw",
        "./lab1.py -s Fig8/6core_Our -p -ops Configuration/6core.txt -m our",

        "./lab1.py -s Fig8/4core_Zhang2022 -p -ops Configuration/4core.txt -m zhangw",
        "./lab1.py -s Fig8/4core_Our -p -ops Configuration/4core.txt -m our",

        "./lab1.py -s Fig8/2core_Zhang2022 -p -ops Configuration/2core.txt -m zhangw",
        "./lab1.py -s Fig8/2core_Our -p -ops Configuration/2core.txt -m our",

        # papa_lab
        "./lab1.py -s Fig45_46_papa/papa_Zhang2022 -p -ops Configuration/2core.txt -m zhangw",
        "./lab1.py -s Fig45_46_papa/papa_Our -p -ops Configuration/2core.txt -m our"
    ]

    # Execute commands sequentially
    for cmd in commands:
        print(f"\n>>> Executing: {cmd}")
        result = subprocess.run(cmd, shell=True)
        if result.returncode != 0:
            print(f"Command execution failed: {cmd}")
            break


if __name__ == "__main__":
    print("\n" + "=" * 80)
    print(">>>                      START BATCH RUNNING EXPERIMENTS                     <<<")
    print("=" * 80 + "\n")
    
    # run_commands()
    
    print("\n" + "=" * 80)
    print(">>>                     END OF BATCH RUNNING EXPERIMENTS                     <<<")
    print("=" * 80 + "\n")
    
    
    print("\n" + "=" * 70)
    print(">>>                      DATA PROCESSING START                     <<<")
    print("=" * 70 + "\n")

    # Step 1: Run cache_info.py
    print("\n>>> All commands have been executed, now running: python3 get_TABLE_V.py lab1/Zhang2022/")
    subprocess.run("python3 get_TABLE_V.py TABLE_VI_VII_Fig9_44/Zhang2022", shell=True)
    print("\n[✅ OUTPUT] TABLE V has been generated:")
    print(f"    ➜ Location: ./TABLE_V/TABLE_V.md")

    # Step 2: Run TABLE_VI tasks
    print("\n>>> Entering the TABLE_VI folder to execute data.py Our and Zhang2022")
    os.chdir("TABLE_VI_VII_Fig9_44")
    subprocess.run("python3 data.py Our", shell=True)
    subprocess.run("python3 data.py Zhang2022", shell=True)
    subprocess.run("python3 draw.py", shell=True)
    print("\n[✅ OUTPUT] TABLE VI and TABLE VII have been generated:")
    print(f"    ➜ Location: ./TABLE_VI/Plots/table")
    
    print("\n[✅ OUTPUT] Figures have been generated:")
    print(f"    ➜ Location: ./TABLE_VI/Plots")
    print(f"    ➜ Figures: Fig9 to Fig44")
    
    
    # Step 4: Run Fig7 
    
    print("\n>>> Entering the Fig7 folder to execute data_draw.py")
    os.chdir("../Fig7")
    subprocess.run("python3 data_draw.py", shell=True)
    print("\n[✅ OUTPUT] Fig7 have been generated:")
    print(f"    ➜ Location: ./Fig7/Plots")

    

    # Step 4: Run Fig8 tasks
    print("\n>>> Entering the Fig8 folder and executing data.py for each folder")
    os.chdir("../Fig8")
    folders = [
        "2core_Our", "2core_Zhang2022",
        "4core_Our", "4core_Zhang2022",
        "6core_Our", "6core_Zhang2022",
        "8core_Our", "8core_Zhang2022",
    ]
    for f in folders:
        print(f"\n[▶] Running: python3 data.py {f}")
        subprocess.run(f"python3 data.py {f}", shell=True)

    subprocess.run("python3 draw_core.py", shell=True)
    print("\n[✅ OUTPUT] Fig8 has been generated:")
    print(f"    ➜ Location: ./Fig8/Plots/core_ratios_boxplot.pdf")

    # Step 5: Run Fig45-46 tasks
    print("\n>>> Entering the Fig45_46_papa folder and running draw_papa.py")
    os.chdir("../Fig45_46_papa")
    subprocess.run("python3 draw_papa.py", shell=True)
    print("\n[✅ OUTPUT] Fig45-46 have been generated:")
    print(f"    ➜ Location: ./Fig45_46_papa/Plots/")
    print(f"    ➜ Files: radio_control_task_comparison.pdf")
    print(f"             send_data_to_autopilot_task_comparison.pdf")

    print("\n" + "=" * 70)
    print(">>>                    DATA PROCESSING COMPLETE                    <<<")
    print("=" * 70 + "\n")


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
