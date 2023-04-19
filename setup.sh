dir=$PWD

echo 'Updating code for FLRU ..'
\cp -f $dir/cache-replacement-policy/code/Cache.cc $dir/multi2sim/src/memory/Cache.cc
\cp -f $dir/cache-replacement-policy/code/Cache.h $dir/multi2sim/src/memory/Cache.h
\cp -f $dir/cache-replacement-policy/code/List.h $dir/multi2sim/src/lib/cpp/List.h
echo 'FLRU update complete.'

echo 'Setting up multi2sim ..'
cd $dir/multi2sim
libtoolize
aclocal
autoconf
automake --add-missing
./configure
echo 'Setup complete.'

echo 'Building multi2sim ..'
cd $dir/multi2sim/src/memory/
make clean
cd $dir/multi2sim/src/lib/cpp/
make clean
cd $dir/multi2sim/src/
make
cd $dir/multi2sim/
make
echo 'Build complete.'