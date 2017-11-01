FROM node:latest
MAINTAINER Sawada Shota <xiootas@gmail.com>

# install calibre dependencies and gitbook-cli
RUN apt-get update && \
	apt-get install -y unzip calibre 
RUN npm install gitbook-cli -g && \
	npm install svgexport -g --unsafe-perm
RUN apt-get clean && \
	rm -rf /var/cache/apt/* /var/lib/apt/lists/*
RUN gitbook help
