# Cache Replacement Policy
## Setting Up multi2sim (Linux)
### 1. Open terminal and navigate to the folder where you want to set it up.
We will call this folder 'root'.
### 2. Clone multi2sim.
Multi2sim is a simulator of CPUs and GPUs, used to test and validate new hardware designs before they are physically manufactured. By running a set of standard benchmarks on Multi2Sim, a computer architect can verify whether a proposed alternative design is correct, and what its relative performance is over existing designs. We will use this simulator to test the performance of replacement policies.

`git clone https://github.com/Multi2Sim/multi2sim.git`
### 3. Clone cache-replacement-policies.
The repository consists of code to implement FLRU and benchmarks for testing the performance.

`git clone https://github.com/akhil1608/cache-replacement-policy.git`
### 4. Run setup script.
The setup script modifies few files to test out the FLRU implementation and builds (installs) the multi2sim simulator.

`./cache-replacement-policy/setup.sh`
> Incase of a permission denied error, run `chmod 777 cache-replacement-policy/setup.sh` first then try again.
## Testing replacement policies with PARSEC benchmarks
### 1. Navigate to the benchmark folder.
We will proceed with **vips** as an example.

`cd cache-replacement-policy/m2s-bench-parsec-3.0/vips`
### 2. Test the multi2sim binary on the benchmark.
You can play around with configurations specified in files `mem-config`, `x86-config` and `benchmark.ini` files or use the default settings. `--max-time` is an optional parameter but useful if testing for small number of instructions.

`../../../multi2sim/bin/m2s --x86-sim detailed --mem-config mem-config --x86-config x86-config --max-time 60 --ctx-config benchmark.ini`

The output will look something like this:

```
; Multi2Sim 5.0 - A Simulation Framework for CPU-GPU Heterogeneous Computing
; Please use command 'm2s --help' for a list of command-line options.
; Simulation alpha-numeric ID: yDSmQ


;
; Simulation Statistics Summary
;

[ General ]
RealTime = 63.39 [s]
SimEnd = MaxTime
SimTime = 524734.00 [ns]
Frequency = 1000 [MHz]
Cycles = 524735

[ x86 ]
RealTime = 63.35 [s]
Instructions = 2074784
InstructionsPerSecond = 32749
SimTime = 524735.00 [ns]
Frequency = 1000 [MHz]
Cycles = 524735
CyclesPerSecond = 8283
FastForwardInstructions = 0
CommittedInstructions = 955111
CommittedInstructionsPerCycle = 1.82
CommittedMicroInstructions = 1562093
CommittedMicroInstructionsPerCycle = 2.977
BranchPredictionAccuracy = 0.8754
```

### 2. Running multi2sim on all benchmarks
`cd ..`

You are now in `cache-replacement-policy/m2s-bench-parsec-3.0/`

Run the experiments using LRU (default). Outputs will be in `cache-replacement-policy/m2s-bench-parsec-3.0/<benchmark>/output.txt`

`./runs.sh`

Modify source code to run FLRU

`cd ../../multi2sim/src/memory/`

Change line 33 in `Cache.cc` to `{ "LRU", ReplacementFLRU },`

`make clean`

`cd ../`

`make`

Run the experiments. Outputs will be in `cache-replacement-policy/m2s-bench-parsec-3.0/<benchmark>/output-FLRU.txt`

`cd ../../cache-replacement-policy/m2s-bench-parsec-3.0/`

`./runs-FLRU.sh`