#!/bin/bash
rm -rf build
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=RelWithDebugInfo -DCMAKE_INSTALL_PREFIX=/home/klondenberg/anaconda3/envs/tensorrt -DCUDNN_INCLUDE_DIR=/home/klondenberg/opt/cuda/include -DTENSORRT_ROOT=/home/klondenberg/projects/U150429_Realtime_Object_Detection_for_AID/thirdparty/tensorrt
make VERBOSE=1 -j8
make install
