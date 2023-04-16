export NTHREADS=3
echo "$NTHREADS"
cd blackscholes
pwd 
m2s --x86-sim detailed --mem-config mem-config --x86-config x86-config --max-time 8 --ctx-config benchmark.ini &>output.txt
