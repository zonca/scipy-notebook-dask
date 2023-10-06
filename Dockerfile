# Inherit from an upstream image
FROM jupyter/scipy-notebook:2023-10-02

COPY environment.yml /tmp/environment.yml

RUN mamba env update --prefix ${CONDA_DIR} --file /tmp/environment.yml

COPY image-tests image-tests
RUN ls
