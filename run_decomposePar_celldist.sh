#!/bin/bash

foamCleanTutorials

blockMesh | tee log.blockMesh

checkMesh | tee log.checkMesh

rm -rf 0 > /dev/null 2>&1
cp -r 0_org/ 0 > /dev/null 2>&1

setFields | tee log.setFields

decomposePar -cellDist

