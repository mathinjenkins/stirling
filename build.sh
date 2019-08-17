STIRLING_DIR=$(pwd)
echo "[0] Building dependencies .. "
echo "[1] Building libexponent"
cd module/libexponent
mkdir -p build && cd build
cmake ../
make
./test/exponent_test
cd $STIRLING_DIR

echo ""
echo "[2] Building libpi"
cd module/libpi
mkdir -p build && cd build
cmake ../
make
./test/pi_test
cd $STIRLING_DIR

echo ""
echo "[3] Building libsqrt"
cd module/libsqrt
mkdir -p build && cd build
cmake ../
make
./test/sqrt_test
cd $STIRLING_DIR

echo ""
echo "[4] Building libeuler"
cd module/libeuler
mkdir -p build && cd build
cmake ../
make
./test/euler_test
cd $STIRLING_DIR

echo ""
echo "==========================="
echo ""
echo "[5] Building Stirling"

mkdir -p build && cd build
cmake ../
make
