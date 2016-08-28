#!/bin/sh
_ANTIGEN_XTRACE_ENABLED=true _XTRACE_OUTPUT=/tmp/xtrace.log zsh -i -c exit
python ./parse-xtrace.py /tmp/xtrace.log > slow.log

