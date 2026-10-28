# 8-Bit Logical Left Shifter

A Verilog implementation of an 8-bit logical left shifter with a 1-bit shift margin. The module accepts an 8-bit input, shifts all bits up by one index position, pads the Least Significant Bit (LSB) with a `0`, and outputs the dropped Most Significant Bit (MSB) as a carry-out (`cout`).

## Hardware Specifications
- **Input:** `in` (8-bit)
- **Outputs:** 
  - `out` (8-bit shifted result: `{in[6:0], 1'b0}`)
  - `cout` (1-bit dropped bit from `in[7]`)

## Simulation and Verification

### Prerequisites
Ensure you have `iverilog` (Icarus Verilog) and `gtkwave` installed on your machine.
```bash
sudo apt update
sudo apt install iverilog gtkwave
```

### Compilation & Execution Pipeline
Run the following commands in your terminal to compile the Verilog source files, execute the compiled design, and visually analyze the waveforms:

```bash
# 1. Compile design and testbench files
iverilog -o design_logical_lshift *.v

# 2. Run simulation to generate the VCD waveform file
vvp design_logical_lshift

# 3. View the timing diagrams
gtkwave sim_output.vcd
```
