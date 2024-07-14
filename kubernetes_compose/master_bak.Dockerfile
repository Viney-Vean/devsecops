# Use an official base image
FROM ubuntu:24.04

# Set environment variables for non-interactive apt installs
ENV DEBIAN_FRONTEND=noninteractive

# Update package index and install necessary packages
RUN apt-get update && \
    apt-get install -y \
    locales \
    docker.io \
    docker-compose \
    git \
    python3 \
    python3-pip \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3-dev \
    python3-venv&& \
    locale-gen en_US.UTF-8 && \
    update-locale LANG=en_US.UTF-8

# Set the default locale
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8

# Alias python3 to python
RUN ln -s /usr/bin/python3 /usr/bin/python

# Clone the kubespray repository
RUN git clone https://github.com/kubernetes-sigs/kubespray.git /opt/kubespray

# Set the working directory
WORKDIR /opt/kubespray

# Install Python dependencies
#RUN pip3 install --no-cache-dir -r requirements.txt

# Command to run when the container starts
CMD ["bash"]
