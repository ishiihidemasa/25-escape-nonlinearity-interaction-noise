#!/bin/sh
apptainer build julia.sif docker://julia:1.11.7-bookworm
apptainer exec julia.sif julia --project=. -e "using Pkg; Pkg.instantiate()"
