#!/bin/bash

bin/build.sh                         \
  && git add source build            \
  && git commit -m "Updated content" \
  && git push
