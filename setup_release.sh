# -----------------------------------------------------------------------------
# auto-generated file, do not modify
# -----------------------------------------------------------------------------

rm -rf build_release
mkdir build_release

cd build_release
cmake ../ -DCMAKE_BUILD_TYPE=Release -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=../install -DTLOC_DETAILED_LOGS=ON
make install