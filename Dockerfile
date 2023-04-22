# Use the official Node.js LTS (Long Term Support) as the base image
FROM node:18.14

# Install the required dependencies
RUN apt-get update && apt-get install -y \
    cmake \
    && rm -rf /var/lib/apt/lists/* \
    && npm install -g node-gyp
# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json into the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application files into the working directory
COPY . .

# Build the application (if the build script is present)
RUN npm run build --if-present

# Execute the provided shell script actions
# RUN mkdir -p libraries \
#     && cd libraries \
#     && git clone https://github.com/facebookresearch/fastText.git \
#     && cd fastText \
#     && mkdir build && cd build \
#     && cmake -DCMAKE_INSTALL_PREFIX=./build .. \
#     && make && make install \
#     && mkdir -p ../../build/Release \
#     && cp libfasttext.so ../../build/Release \
#     && cd ../../../ \
#     && cd src \
#     && node-gyp configure && node-gyp build \
#     && cd .. && rm -rf libraries/fastText

# Download the FastText pre-trained model
# RUN mkdir -p libraries/model \
#     && wget -O libraries/model/cc.en.300.bin.gz https://dl.fbaipublicfiles.com/fasttext/vectors-crawl/cc.en.300.bin.gz \
#     && gzip -d libraries/model/cc.en.300.bin.gz \
#     && rm -f libraries/model/cc.en.300.bin.gz

# Expose the default port for your application (replace 3000 with the port your app is running on, if different)
EXPOSE 8080

# Start the application
CMD ["npm", "start"]
