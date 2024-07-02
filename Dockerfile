FROM alpine:edge

WORKDIR /home/container
ADD . /home/container
RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk add git g++ gcc libgcc util-linux-misc nodejs npm openssh-server \
    imagemagick libwebp-tools ffmpeg go neofetch
RUN npm i -g pm2
CMD pm2-runtime "tmate -F" --name tmate
