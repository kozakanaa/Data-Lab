FROM ubuntu:latest 
# update
RUN apt-get -y update && apt-get install -y \
libsm6 \
libxext6 \
libxrender-dev \
libglib2.0-0 \
sudo \
wget \
vim

#install anaconda3
WORKDIR /opt
# download anaconda package and install anaconda
# archive -> https://repo.anaconda.com/archive/
RUN wget https://repo.continuum.io/archive/Anaconda3-2023.03-1-Linux-x86_64.sh && \
    sh Anaconda3-2023.03-1-Linux-x86_64.sh -b -p /opt/anaconda3 && \
    rm -f Anaconda3-2023.03-1-Linux-x86_64.sh 
# set path
ENV PATH /opt/anaconda3/bin:$PATH

# update pip and install packages
RUN pip install --upgrade pip && \
    pip install opencv-python && \
    pip install nibabel

WORKDIR /
RUN mkdir /work

# execute jupyterlab as a default command
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]