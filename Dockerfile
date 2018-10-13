FROM cupy/cupy:latest-python3

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    wget \
    gdal-bin \
    mecab \
    mecab-ipadic-utf8

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN pip3 install --no-cache-dir \
    pillow \
    h5py \
    chainer
