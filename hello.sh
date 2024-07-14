#!/bin/bash

<<COMMENT
Line 5 sets a variable name
to the value of the first command-line argument $1 if it's provided,
and defaults to "World" if no argument is provided.
COMMENT
name=${1:-World}
echo "Hello, $name"
