#!/bin/sh
ulimit -v $((15*1024*1024))
# 250920-measure-met.jl nwparamset K firstseed numsample numworker
nohup apptainer exec julia.sif julia -t 4 --project=. src/250920-measure-met.jl cbg512 1.0 1 500 16 &> 250920-measure-met.out