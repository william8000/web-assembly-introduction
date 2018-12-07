# Patched Web Assembly examples

## Works with the tutorial at <https://codelabs.developers.google.com/codelabs/web-assembly-intro/>

## Based on <https://github.com/googlecodelabs/web-assembly-introduction> and <https://github.com/nerdkid93/wasm-intro>

To get started, build the Emscripten SDK (might take several hours):
* `cd` *workdirectory*
* `git clone https://github.com/juj/emsdk.git`
* `cd emsdk`
* `./emsdk install sdk-incoming-64bit binaryen-master-64bit`
* `./emsdk activate sdk-incoming-64bit binaryen-master-64bit`
* After it builds, set up the Emscripten SDK by running
* `source ./emsdk_env.sh`

When you have the environment set up:
* Clone this repository
* `cd web-assembly-introduction`
* Build it with `make`
* Start a web server with `python -m SimpleHTTPServer` or `python3 -m http.server`
* Browse to `http://localhost:8000/`
