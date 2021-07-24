mkdir build
cd build/ || exit
git clone --recursive https://github.com/riscv/riscv-gnu-toolchain
sudo apt-get install autoconf automake autotools-dev curl python3 libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev
cd riscv-gnu-toolchain/ || exit
./configure --prefix=/opt/riscv
sudo apt install g++-riscv64-linux-gnu gcc-riscv64-linux-gnu
