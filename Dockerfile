FROM jupyter/minimal-notebook

USER root

# libav-tools for matplotlib anim
RUN apt-get update && \
    apt-get install -y graphviz

USER jovyan

WORKDIR /home/jovyan/work/

