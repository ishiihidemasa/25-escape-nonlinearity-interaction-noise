# last update: 2025-06-09
FROM julia:1.11.4-bookworm

WORKDIR /workdir
EXPOSE 8888

RUN JULIA_PROJECT=/workdir
ENV DEVCONTAINER=TRUE
# set default to the current project
ENV JULIA_PROJECT=@.
# enable multi-threading
ENV JULIA_NUM_THREADS=12
