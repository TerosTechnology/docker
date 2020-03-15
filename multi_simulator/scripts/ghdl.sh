cd /tmp
git clone https://github.com/ghdl/ghdl.git --branch v0.36
cd ghdl; mkdir build; cd build;
../configure
make -j4
make install
rm -rf /tmp/ghdl
