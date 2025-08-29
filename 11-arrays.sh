#!/bin/bash

BOOKS=("got" "lod" "5wtbs" "abcd")

echo " First movie index is 0 so : ${BOOKS[0]}"

echo " First movie index is 3 so : ${BOOKS[3]}"

echo " all movie index are : ${BOOKS[@]}"