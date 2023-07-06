FROM python:3.6.15-buster 

COPY requirements.txt /tmp/pip/requirements.txt

#install required packages
RUN apt-get update && \
  apt-get install --no-install-recommends -y \
  curl \
  vim \
  && rm -rf /var/lib/apt/lists/* \
  #alias python=>python3
  #&& ln -s /usr/bin/python3.6 /usr/bin/python \
  #update pip
  #&& pip install --upgrade pip \
  #install pip dependencies
  && pip install https://download.pytorch.org/whl/cpu/torch-0.3.1-cp36-cp36m-linux_x86_64.whl \
  && pip install -r /tmp/pip/requirements.txt
#install cuda drivers and torch
#RUN pip torch==1.7.1+cu110 torchvision==0.8.2+cu110 torchtext==0.8.1 torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html

WORKDIR /home/workspace
CMD ["/bin/bash"]
