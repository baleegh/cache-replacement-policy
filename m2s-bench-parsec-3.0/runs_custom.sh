export NTHREADS=3
echo "$NTHREADS"

cd dedup
pwd 
m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini
cd ..

cd raytrace
pwd 
m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini
cd ..

cd streamcluster
pwd 
m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini
cd ..

cd swaptions
pwd 
m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini
cd ..

cd vips
pwd 
m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini
cd ..

cd x264
pwd 
m2s --mem-config mem-config --x86-config x86-config --max-time 1800 --ctx-config benchmark.ini
cd ..