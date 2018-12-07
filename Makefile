# Build all of the web assembly examples
#
# Remember to
#   source emsdk_env.sh

# Uncomment the next line for compile diagnostics
# export EMCC_DEBUG=1

SOLUTION=lyff/solution/output.wasm
NK=lyff/nk/output.wasm
SIMPLE=mandelbrot-simple/mandelbrot.wasm
TILED=mandelbrot-tiled/mandelbrot.wasm

all: $(SOLUTION) $(NK) $(SIMPLE) $(TILED)

$(SOLUTION): lyff/lyff.c lyff/solution/build.sh
	cd lyff/solution; ./build.sh

$(NK): lyff/lyff.c lyff/nk/build.sh
	cd lyff/nk; ./build.sh

$(SIMPLE): mandelbrot-simple/mandelbrot.cpp mandelbrot-simple/Makefile
	cd mandelbrot-simple; make

$(TILED): mandelbrot-tiled/mandelbrot.cpp mandelbrot-tiled/Makefile
	cd mandelbrot-tiled; make

clean:
	rm -f */*.js */*/*.js */*.wasm */*/*.wasm
