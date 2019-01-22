#!/bin/bash

echo "Installing PX4 dependencies"

sudo apt-get update
sudo apt-get -y --no-install-recommends install \
    ant \
    bzip2 \
	ca-certificates \
	ccache \
	cmake \
	cppcheck \
	curl \
	dirmngr \
	doxygen \
	file \
	g++ \
	gcc \
	gdb \
	git \
	gnupg \
	gosu \
	lcov \
	libfreetype6-dev \
	libgtest-dev \
	libpng-dev \
	lsb-release \
	make \
	ninja-build \
	openjdk-8-jdk \
	openjdk-8-jre \
	openssh-client \
	pkg-config \
    python \
    python-dev \
    python3 \
    python3-dev \
	python-pygments \
	python-setuptools \
	rsync \
	shellcheck \
	tzdata \
	unzip \
	wget \
	xsltproc \
	zip

wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
sudo python get-pip.py

pip install --user setuptools pkgconfig wheel
pip install --user \
    argparse \
    argcomplete \
    coverage \
    jinja2 \
    empy \
    numpy \
    requests \
    serial \
    toml \
    pyyaml \
    cerberus
