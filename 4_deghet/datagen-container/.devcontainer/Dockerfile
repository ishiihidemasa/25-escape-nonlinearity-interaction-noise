# last update: 2025-09-20
FROM julia:1.11.7-bookworm

WORKDIR /workdir
EXPOSE 8888

#RUN JULIA_PROJECT=/workdir
#ENV DEVCONTAINER=TRUE

# install JuliaFormatter for VSCode extension
RUN julia -e 'using Pkg; Pkg.add("JuliaFormatter")'
# install project-specific packages
COPY Project.toml Manifest.toml ./
RUN julia --project=. -e 'using Pkg; Pkg.instantiate()'
# set default to the current project
ENV JULIA_PROJECT=@.
# enable multi-threading
ENV JULIA_NUM_THREADS=12
