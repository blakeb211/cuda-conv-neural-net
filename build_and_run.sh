# Build or rebuild the project with CMAKE after making any modifications.
# The mnist files will only be downloaded the first time.
echo on
if [ ! -d "build" ]; then
  mkdir build && cd build
else
  cd build
fi
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j10
if [ ! -d "mnist_data" ]; then 
  mkdir mnist_data && cd mnist_data
  wget -c http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz
  wget -c http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz
  wget -c http://yann.lecun.com/exdb/mnist/t10k-images-idx3-ubyte.gz
  wget -c http://yann.lecun.com/exdb/mnist/t10k-labels-idx1-ubyte.gz
  gunzip train-images-idx3-ubyte.gz 
  gunzip train-labels-idx1-ubyte.gz 
  gunzip t10k-labels-idx1-ubyte.gz 
  gunzip t10k-images-idx3-ubyte.gz 
  cd ..
fi
./mnist
