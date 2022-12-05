#!/bin/bash
out="$(pgrep stress)"
check="[1-9]"
if [[ ! $out =~ $check ]]; then
	stress -q --cpu 3 & &> /dev/null
	echo "started cpu stressing"
else
	echo "already stressing cpu"
fi