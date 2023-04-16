export NTHREADS=3
echo "$NTHREADS"

cd blackscholes
pwd 
m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output.txt
cd ..

cd bodytrack
pwd 
m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output.txt
cd ..

cd canneal
pwd 
m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output.txt
cd ..

cd dedup
pwd 
m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output.txt
cd ..

cd facesim
pwd 
m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output.txt
cd ..

cd ferret
pwd 
m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output.txt
cd ..

cd fluidanimate
pwd 
m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output.txt
cd ..

cd freqmine
pwd 
m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output.txt
cd ..

cd raytrace
pwd 
m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output.txt
cd ..

cd streamcluster
pwd 
m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output.txt
cd ..

cd swaptions
pwd 
m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output.txt
cd ..

cd vips
pwd 
m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output.txt
cd ..

cd x264
pwd 
m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output.txt
cd ..