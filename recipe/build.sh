# Turn the work-folder into GOPATH
export GOPATH=${SRC_DIR}
export PATH=${GOPATH}/bin:$PATH
pushd src/github.com/terraform-providers/$PKG_NAME

# Build
make build
make test

# Install Binary into PREFIX/bin
mkdir $PREFIX/bin
mv $GOPATH/bin/$PKG_NAME $PREFIX/bin/${PKG_NAME}_v${PKG_VERSION}_x4
