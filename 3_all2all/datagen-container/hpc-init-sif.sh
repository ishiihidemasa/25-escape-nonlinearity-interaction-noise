#!/bin/sh
apptainer build julia.sif docker://julia:1.11.4-bookworm
apptainer exec julia.sif julia --project=. -e "using Pkg; Pkg.instantiate()"
