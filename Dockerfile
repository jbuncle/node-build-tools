FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
	zip \
	curl \
	git \
        wget \
        gnupg \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -

RUN apt-get update && apt-get install -y \
	nodejs \
	build-essential \
	g++ \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g less less-plugin-autoprefix less-plugin-clean-css \
    uglify-js \
    uglifycss \
    postcss-cli autoprefixer
