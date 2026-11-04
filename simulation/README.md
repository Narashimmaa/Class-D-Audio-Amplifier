# Simulation

ngspice (version 42) netlists for the Class D amplifier. Run one with `ngspice -b file.cir`, or all with `./run_all.ps1`. Each run writes a text file with the waveforms (osc.txt, pre.txt, ac.txt, power.txt).

| File | What it simulates |
|---|---|
| 1_carrier_generator.cir | Schmitt trigger and integrator (TL074 model) that make the triangle wave, plus the 6 V mid-rail |
| 2_preamp.cir | Input mixer, volume pot and the inverting preamplifier |
| 3_output_network_ac.cir | Frequency response of L1, C6, C7 and the 4 ohm speaker |
| 4_power_stage.cir | Half-bridge, dead time, body diodes, LC filter and speaker |

## Model limits
- The op-amp, comparator and gate-driver blocks are behavioural models, not manufacturer models.
- The bootstrap supply is an ideal floating 11.3 V source.
- The speaker is a 4 ohm resistor (no voice-coil inductance).
- The results are simulations and not measurements from the breadboard.

`results/` holds the plots used in the report.
