FROM nvidia/cuda:12.1.0-devel-ubuntu20.04

COPY requirements.txt /tmp/docker_cuda/requirements.txt
#install required packages
RUN apt-get update && \
  apt-get install --no-install-recommends -y \
  # if needed, specify python version
  python3.5 \
  #python3-pip \
  #  python3-dev \
  curl \
  vim \
  && rm -rf /var/lib/apt/lists/* \
  #alias python=>python3
  && ln -s /usr/bin/python3 /usr/bin/python \
  #update pip
  && pip install --upgrade pip \
  #install pip dependencies
  && pip install -r /tmp/docker_cuda/requirements.txt
#install cuda drivers and torch
#RUN pip torch==1.7.1+cu110 torchvision==0.8.2+cu110 torchtext==0.8.1 torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html

WORKDIR /home/workspace
CMD ["/bin/bash"]