#! /bin/bash

# compila chetado y vuelve

# conda activate rpc 

cd build

cmake ..   -DProtobuf_PROTOC_EXECUTABLE=$(which protoc)   -DProtobuf_INCLUDE_DIR=$CONDA_PREFIX/include   -DProtobuf_LIBRARY=$CONDA_PREFIX/lib/libprotobuf.so   -DCMAKE_PREFIX_PATH=$CONDA_PREFIX   -DCMAKE_LIBRARY_PATH=$CONDA_PREFIX/lib   -DCMAKE_INCLUDE_PATH=$CONDA_PREFIX/include 
make -j12
cd ..

#clear

# corre el codigo
python simulator/pybullet/g1_main.py
