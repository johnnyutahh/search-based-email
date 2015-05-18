#!/bin/bash

# from http://stackoverflow.com/a/246128/605356
MYDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

asciidoctor $MYDIR/README.adoc ; open $MYDIR/README.html
