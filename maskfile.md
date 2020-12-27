# SATySFi tasks

## build

> build src/main.saty file.

Valid lang codes: cmd, bash

**OPTIONS**
* output
  * flags: -o --output
  * type: string
  * desc: build result file name in ./output.  default is "$(date +%Y%m%d_%H%M%S).pdf"

~~~sh
sh -c './scripts/build.sh ${verbose:-0} ${output:-$(date +%Y%m%d_%H%M%S).pdf}'
~~~
