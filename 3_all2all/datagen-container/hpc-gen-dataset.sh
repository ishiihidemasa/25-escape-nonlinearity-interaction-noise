#!/bin/sh
ulimit -v $((15*1024*1024))
nohup apptainer exec julia.sif julia --project=. src/250611-export-res.jl &> 250611-export-res.out