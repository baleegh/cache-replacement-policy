export NTHREADS=3
echo "$NTHREADS"

cd blackscholes
pwd 
../../../multi2sim/bin/m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output-FLRU.txt
cd ..

cd bodytrack
pwd 
../../../multi2sim/bin/m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output-FLRU.txt
cd ..

cd canneal
pwd 
../../../multi2sim/bin/m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output-FLRU.txt
cd ..

cd dedup
pwd 
../../../multi2sim/bin/m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output-FLRU.txt
cd ..

cd facesim
pwd 
../../../multi2sim/bin/m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output-FLRU.txt
cd ..

cd ferret
pwd 
../../../multi2sim/bin/m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output-FLRU.txt
cd ..

cd fluidanimate
pwd 
../../../multi2sim/bin/m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output-FLRU.txt
cd ..

cd freqmine
pwd 
../../../multi2sim/bin/m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output-FLRU.txt
cd ..

cd raytrace
pwd 
../../../multi2sim/bin/m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output-FLRU.txt
cd ..

cd streamcluster
pwd 
../../../multi2sim/bin/m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output-FLRU.txt
cd ..

cd swaptions
pwd 
../../../multi2sim/bin/m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output-FLRU.txt
cd ..

cd vips
pwd 
../../../multi2sim/bin/m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output-FLRU.txt
cd ..

cd x264
pwd 
../../../multi2sim/bin/m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini &>output-FLRU.txt
cd ..