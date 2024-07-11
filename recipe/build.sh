#!/bin/bash
# inject C++ standard
sed -i '/CXX_STD = CXX11/c\CXX_STD = CXX14' src/Makevars

export DISABLE_AUTOBREW=1
${R} CMD INSTALL --build . ${R_ARGS}
