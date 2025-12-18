This repository contains Julia codes and simulation datasets that support my PhD dissertation.  

# Reproducing figures from simulation results
To reproduce figures based on simulation results stored in `hpc-data` and `data` directories, 
the easiest way is:  

- download this repository
- open the directory in VSCode
- 'Reopen in Container' using `Dev Container`
  - requires Docker Desktop
- Done! You are ready to run (most) Julia scripts in this repository!

Alternatively, you can create the appropriate Julia environment locally -- not in Docker container --
using `Project.toml` and `Manifest.toml` in the root directory.

# Reproducing simulation results
We performed direct numerical simulations of model SDEs on a high-performance computer (HPC) using `apptainer`.  
Roughly speaking, the procedure is as follows:

- Use each of `datagen-container` directories in `3_all2all` and `4_deghet` as an independent container.
  - Each directory contains its own `.devcontainer` direcotry, `Project.toml`, and `Manifest.toml`.
- Copy `datagen-container` to a HPC, where you can use `apptainer`.
- Run `hpc-init-sif.sh` to generate an apptainer container.
  - This should automatically initialise Julia environment, ideally...
- Run `hpc-gen-dataset.sh` (in `3_all2all`) or `hpc-measure-et.sh` (in `4_deghet`) with parameters of your choise.
  - You might also want to tune parameters in the Julia scripts called in the shell scripts.
  - I note that multiprocessing is used: be aware of CPU and memory consumptions!

Please contact me (ISHII Hidemasa) if you need further clarification.
