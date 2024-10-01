#!/usr/bin/env bash

DIRNAME=$(dirname $(realpath "$0"))

code --list-extensions >"$DIRNAME/extensions.txt"
