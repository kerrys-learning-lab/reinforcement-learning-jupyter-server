FROM jupyter/datascience-notebook:lab-3.6.1

USER root

RUN  apt-get update &&   \
     apt-get install -y  curl \
                         file \
                         gnupg \
                         graphviz \
                         less \
                         lsb-release \
                         python3-pycuda \
                         wget \
                         xvfb

RUN  apt-get purge -y    python2.7 \
                         python3.8 &&   \
     apt autoremove -y &&   \
     rm -rf /etc/python2.7

USER jovyan

RUN  pip install    ale-py \
                    graphviz \
                    gym \
                    jupyterlab-git \
                    jupyter_contrib_nbextensions \
                    pydot \
                    pygame \
                    pyvirtualdisplay \
                    pyyaml
