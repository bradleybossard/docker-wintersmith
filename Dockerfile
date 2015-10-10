FROM ubuntu:14.04
MAINTAINER Bradley Bossard <bradleybossard@gmail.com>

# Build the image
# docker build --rm -t docker-wintersmith .

# Fire up an instance with a bash shell
# docker run  -i -t --rm -v $(pwd):/src docker-wintersmith

RUN apt-get update

RUN apt-get install --yes nodejs npm
RUN npm install -g wintersmith 
RUN ln -fs /usr/bin/nodejs /usr/local/bin/node
