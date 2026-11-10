# Digital System Design Lab Portfolio

This repository is a navigation guide to my Digital System Design lab work in
Intel Quartus II. Each lab folder keeps the design source, Quartus project
files, simulation waveforms, generated programming files, and the original
report or documentation where available.

## Start here

| Lab | What to open first | Main result |
|---|---|---|
| [Lab 1 - AND gate](./lab1-AND%20gate) | [`lab1.bdf`](./lab1-AND%20gate/lab1.bdf) | Minimal combinational design; fitter used **1 logic element**, **0 registers**, and **3 pins** |
| [Lab 3 - 7-segment display](./lab3-7seg) | [`Lab3.bdf`](./lab3-7seg/Lab3.bdf) | 7-segment combinational logic; fitter used **7 logic elements**, **0 registers**, and **11 pins** |
| [Lab 4 - Adventure game FSM](./lab4-adventure_game) | [`Game.bdf`](./lab4-adventure_game/Game.bdf) and the [lab report](./lab4-adventure_game/Nikhil_Chandra_Lab4.docx) | Room/sword state machines; fitter used **21 logic elements**, **8 registers**, and **17 pins** |
| [Lab 5 - Adventure game 2](./lab5-adventure_game2) | [`lab05_nc.qsf`](./lab5-adventure_game2/lab05_nc.qsf) | Follow-up FSM implementation; fitter used **13 logic elements**, **8 registers**, and **17 pins** |
| [Lab 6 - Single-path RISC architecture](./lab6-Single%20Path%20RISC%20Architecture/lab6-final) | [`lab6.qsf`](./lab6-Single%20Path%20RISC%20Architecture/lab6-final/lab6.qsf) and the [lab report](./lab6-Single%20Path%20RISC%20Architecture/nikhil_chandra_lab6.pdf) | CPU datapath/control implementation; fitter used **150 logic elements**, **64 registers**, and **139 pins** |
| [Lab 7 - Single-path RISC I-type](./lab7-Single%20Path%20RISC-i-type) | [`lab7.qsf`](./lab7-Single%20Path%20RISC-i-type/lab7.qsf) and the [lab report](./lab7-Single%20Path%20RISC-i-type/nikhil_chandra_lab7.pdf) | I-type/RISC extension with a register file; fitter used **2,282 logic elements**, **1,024 registers**, and **146 pins** |

All six projects target the **Cyclone IV E `EP4CE115F29C7`** and include a
successful Quartus fitter result in `output_files/*fit.summary`.

## Actual outputs

The generated artifacts are retained in each lab's `output_files/` directory:

- `.sof` files are the compiled FPGA programming outputs.
- `.fit.summary`, `.map.summary`, and `.sta.summary` contain resource and
  timing results.
- `.vwf` files and `simulation/qsim/` contain waveform-based simulations.
- `.rpt` files contain the detailed Quartus reports.

The fitter results show the progression from a one-element AND gate to the
larger RISC designs:

| Design | Logic elements | Registers | Pins | Fitter |
|---|---:|---:|---:|---|
| Lab 1 | 1 | 0 | 3 | Successful |
| Lab 3 | 7 | 0 | 11 | Successful |
| Lab 4 | 21 | 8 | 17 | Successful |
| Lab 5 | 13 | 8 | 17 | Successful |
| Lab 6 | 150 | 64 | 139 | Successful |
| Lab 7 | 2,282 | 1,024 | 146 | Successful |

The timing summaries are also preserved as generated. In particular, Labs 4-7
show negative setup and/or minimum-pulse-width slack in the checked Quartus
corners, so the fitter result should not be read as proof of timing closure.

## Visual output

The Lab 6 project includes an actual Quartus pin-assignment capture:

![Lab 6 pin assignments](./lab6-Single%20Path%20RISC%20Architecture/lab6-final/Screenshot_2024-11-12_19-09-54.png)

It documents the mapped display, clock, reset, and switch pins used by the
single-path RISC design. The remaining visual/simulation evidence is available
as native Quartus waveform files:

- [Lab 1 waveforms](./lab1-AND%20gate/output_files)
- [Lab 3 waveforms](./lab3-7seg/output_files)
- [Lab 4 simulation history](./lab4-adventure_game/simulation/qsim)
- [Lab 5 simulation history](./lab5-adventure_game2/simulation/qsim)
- [Lab 6 simulation history](./lab6-Single%20Path%20RISC%20Architecture/lab6-final/simulation/qsim)
- [Lab 7 simulation history](./lab7-Single%20Path%20RISC-i-type/simulation/qsim)

## How the folders are organized

Within a lab folder, use this order:

1. Open the `.bdf` or project file to inspect the design.
2. Read the report (`.pdf` or `.docx`) for the design explanation and results.
3. Open `Waveform*.vwf` or `simulation/qsim/` for simulation evidence.
4. Open `output_files/*fit.summary` and `*sta.summary` for measured resource
   use and timing results.
5. Use the generated `.sof` in `output_files/` when programming the target
   Cyclone IV board.

The `db/`, `incremental_db/`, and other Quartus-generated directories are kept
with the projects so they can be reopened in the original Quartus environment.
