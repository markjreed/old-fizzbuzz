#!/bin/bash 
dir=/tmp/fizzbuzz$$
md5=f03a6ec43a542d5cca5c8b7bbe80c1a9

# eliminate output format differences between languages
cleanup() {
  tr a-z A-Z | sed -ne '/./{;s/[^0-9FIZBU]//g;s/^0*//;p;}'
}

jq -r '.[]|[.["name","file","compile","run","tested-with"]]|join(":")' languages.json | while IFS=: read name file compile run tested_with; do
  if [ -n "$run" ]; then
    echo -n "$name (via $tested_with):"
    rm -rf "$dir/$name"
    mkdir -p "$dir/$name"
    cp "$file" "$dir/$name"
    (
      cd "$dir/$name"
      if [ -n "$compile" ]; then $compile "$file" >& compile.out; fi
      if [ "$("$run" "$file" | cleanup | md5)" = "$md5" ]; then
        echo '[32mPASS[0m'
      else
        echo '[31mFAIL[0m'
      fi
    )
  else
    echo "$name: [33mSKIP[0m"
  fi
done
