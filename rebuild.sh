#!/bin/bash

# Go to the libraries directory
cd libraries

# Clone the fastText repository
git clone https://github.com/facebookresearch/fastText.git

# Go to the fastText directory
cd fastText

# Create a build directory and move into it
mkdir build && cd build

# Run cmake to configure the build
cmake ..

# Build fastText
make && make install

# Exit the fastText build directory
cd ../../..

# Configure node-gyp
node-gyp configure

# Build the addon
node-gyp build
