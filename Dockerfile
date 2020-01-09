FROM ubuntu:latest
MAINTAINER usaussie@gmail.com

ENV PATH="/opt/bin:$PATH" \
	SOURCE_URL="https://github.com/luka1199/geo-heatmap.git"

COPY bash/.bashrc /root/.bashrc

RUN apt-get update \
  && apt-get install -y python3-pip python3-dev git curl bash \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip

RUN mkdir -p /var/heatmap/location-data

RUN mkdir -p /var/heatmap/geo-heatmap \
    && git clone ${SOURCE_URL} /var/heatmap/geo-heatmap

RUN cd /var/heatmap/geo-heatmap \
	&& pip install -r requirements.txt

WORKDIR /var/heatmap/geo-heatmap
ENTRYPOINT ["/bin/bash"]