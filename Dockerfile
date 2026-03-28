FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    zip \
    curl \
    git \
    wget \
    gnupg \
    build-essential \
    g++ \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -

RUN apt-get update && apt-get install -y \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g less less-plugin-autoprefix less-plugin-clean-css \
    uglify-js \
    uglifycss \
    postcss-cli autoprefixer
