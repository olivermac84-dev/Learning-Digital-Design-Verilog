#  Learning Digital Design & Verilog

Welcome to my digital design learning portfolio! This repository tracks my journey from understanding basic logic gates to designing more complex digital circuits like a **Ripple Carry Adder** using **Verilog HDL**. 

All circuits are simulated, verified, and tested using open-source tools within a **Windows Subsystem for Linux (WSL - Ubuntu)** environment.

---

## Tools & Environment

* **OS:** Windows Subsystem for Linux (WSL) - Ubuntu
* **Code Editor:** VS Code
* **HDL Language:** Verilog
* **Simulator:** Icarus Verilog (`iverilog`)
* **Waveform Viewer:** GTKWave

---

## Repository Structure & Roadmap

Here is the step-by-step breakdown of the hardware blocks implemented in this repository:

* **[01_and_gate](./01_and_gate/)** - Basic AND gate design and testbench verification.
* **[02_half_adder](./02_half_adder/)** - Half Adder circuit using structural/dataflow modeling.
* **[03_full_adder](./03_full_adder/)** - Full Adder implementation combining gates/half-adders.
* **[04_ripple_carry_adder](./04_ripple_carry_adder/)** - 4-bit Ripple Carry Adder created by cascading Full Adders.

---

## How to Simulate and Test Locally

If you want to clone this repository and test the designs on your machine, ensure you have `iverilog` and `gtkwave` installed in your WSL terminal:

```bash
sudo apt update && sudo apt install iverilog gtkwave -y



Example: Simulating the AND Gate
Navigate to the project directory:

Bash
cd 01_and_gate
Compile the design and the testbench file together:

Bash
iverilog -o and_gate_sim.vvp and_gate.v tb_and_gate.v
Run the compiled simulator to generate the VCD (Value Change Dump) waveform file:

Bash
vvp and_gate_sim.vvp
View the simulated digital signals visually using GTKWave:

Bash
gtkwave and_gate_test.vcd

