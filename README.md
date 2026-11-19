# Traffic Light Controller using FSM (Verilog)

## Objective
Design and simulate a 4-state traffic light controller using a Finite State Machine (FSM) in Verilog.

## Tools Used
- Icarus Verilog (compile and simulate)
- GTKWave (waveform viewer)

## FSM States
| State | North-South | East-West |
|-------|-------------|-----------|
| 0 | Green | Red |
| 1 | Yellow | Red |
| 2 | Red | Green |
| 3 | Red | Yellow |

Light encoding: 00 = Red, 01 = Yellow, 10 = Green

## Files
- traffic_light_controller.v - FSM design
- tb_traffic.v - testbench
- waveform.png - simulation waveform
- simulation_output.png - terminal output

## How to Run
iverilog -o tl.out traffic_light_controller.v tb_traffic.v
vvp tl.out
gtkwave dump.vcd

## Result
After reset the controller cycles continuously through all four states, as shown in the waveform.
