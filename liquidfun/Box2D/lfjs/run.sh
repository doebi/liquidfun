#!/usr/bin/env bash
export EMSCRIPTEN=/home/doebi/wd/emscripten
export CLOSURE_JAR=/home/doebi/wd/closure/compiler.jar

make

./uglify.sh

cp liquidfun.js lib.js
cat impact-stuff >> lib.js
mv lib.js /home/doebi/Projects/impact/blindrun/lib/plugins/liquidfun/lib.js
cp lf_core.js.mem /home/doebi/Projects/impact/blindrun/
