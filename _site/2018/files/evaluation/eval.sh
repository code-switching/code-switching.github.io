#!/bin/bash

cat $2 \
| awk '{print $NF}' \
| paste $1 - \
| python wnuteval.py

exit 0