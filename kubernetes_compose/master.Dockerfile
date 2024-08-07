# Use an official base image
FROM ubuntu:20.04

# Set environment variables for non-interactive apt installs
ENV DEBIAN_FRONTEND=noninteractive

# Update package index and install necessary packages
RUN apt-get update && \
    apt-get install -y \
    locales \
    git \
    software-properties-common \
    build-essential \
    libssl-dev \
    libffi-dev && \
    rm -rf /var/lib/apt/lists/*

# Install Python 3.11 (assuming it's available in a PPA or repository)
RUN add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update && \
    apt-get install -y python3.10 python3.10-dev python3.10-venv && \
    rm -rf /var/lib/apt/lists/*


# Set the default locale
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8

# Clone the kubespray repository
RUN git clone https://github.com/kubernetes-sigs/kubespray.git /opt/kubespray

# Set the working directory
WORKDIR /opt/kubespray

# Optionally, copy and install Python dependencies
RUN python3.10 -m venv venv && \
    . venv/bin/activate && \
    pip install --no-cache-dir -r requirements.txt

# Command to run when the container starts
CMD ["bash"]
