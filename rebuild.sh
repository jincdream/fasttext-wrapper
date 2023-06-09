#!/bin/bash
rm -rf libraries/fastText && rm -rf libraries/build

mkdir -p libraries
# Go to the libraries directory
cd libraries

# Clone the fastText repository
git clone https://github.com/facebookresearch/fastText.git

# Go to the fastText directory
cd fastText

# Create a build directory and move into it
mkdir build && cd build

# Run cmake to configure the build with custom install path
cmake -DCMAKE_INSTALL_PREFIX=./build ..

# Build fastText
make && make install

cd ../../../

cd src

# Exit the fastText build directory

# Configure node-gyp
node-gyp configure
node-gyp build

# Build the addon



