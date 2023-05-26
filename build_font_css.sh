#!/bin/bash

for i in 200:Light 400:Regular 500:Medium 700:Bold; do
w=$(echo $i | cut -d: -f1)
t=$(echo $i | cut -d: -f2)

if [ "$w" == "200" ] || [ "$w" == "400" ]; then
    s="font-style: normal;"
else
    s=""
fi
cat << EOF
@font-face {
  font-family: "Iosevka NF";
  $s
  font-weight: $w;
  src: url(data:font/ttf;charset=utf-8;base64,$(echo -n $(base64 IosevkaNerdFont-$t.ttf)));
}
EOF
done
