FROM golang:1.19.13-alpine

WORKDIR /home/container
ADD . /home/container
RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk add git g++ gcc libgcc util-linux-misc openssh-server tmate \
    nodejs npm imagemagick libwebp-tools ffmpeg neofetch
RUN npm i -g pm2
RUN npm i express
RUN echo 'pm2 start index.js' > start
RUN echo 'pm2-runtime "tmate -F" --name tmate' >> start
CMD bash start
