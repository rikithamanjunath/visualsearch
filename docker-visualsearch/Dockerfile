FROM continuumio/anaconda3/sjsu/spring/2019/295:rikitha

WORKDIR /

RUN apt-get update
# Core linux dependencies.
RUN apt-get install -y \
        build-essential \
        cmake \
        git \
        wget \
        unzip \
        yasm \
        pkg-config \
        libswscale-dev \
        libtbb2 \
        libtbb-dev \
        libjpeg-dev \
        libpng-dev \
        libtiff-dev \
        libavformat-dev \
        libhdf5-dev \
        libpq-dev
RUN apt-get install libopencv-dev -y

# Python dependencies
RUN pip install --upgrade pip
RUN pip3 --no-cache-dir install \
    numpy \
    hdf5storage \
    h5py \
    scipy \
    py3nvml

RUN pip install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.11.0-cp36-cp36m-linux_x86_64.whl
COPY requirements.txt /app/
RUN pip install -r /app/requirements.txt
RUN python --version
RUN mkdir -p /visual/notebook
RUN chmod 777 /visual/notebook