rm -rf build/
mkdir build/
cd build/
cmake ../ -DCMAKE_INSTALL_PREFIX=../install -DTLOC_DETAILED_LOGS=ON
make
