#!/bin/bash

for f in source/*.md; do
	cat $f                              \
	| pandoc -f gfm                     \
	         -t html                    \
	         --metadata title=titleName \
	         --template=sheet           \
  > build/$(basename ${f%.*}.html)
done
