FROM ubuntu:14.10
MAINTAINER Bradley Bossard <bradleybossard@gmail.com>

# Build the image
# docker build --rm -t docker-wintersmith .

# Fire up an instance with a bash shell
# docker run  -i -t --rm -v $(pwd):/src docker-wintersmith

RUN apt-get update

RUN sudo apt-get install -y nodejs-legacy npm
RUN npm install -g wintersmith 
