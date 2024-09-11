FROM kalilinux/kali-rolling:latest

# Update and install additional tools not included in the base image
RUN apt-get update && apt-get install -y \
    gobuster \
    python3-pip \
    vim \
    tmux \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install --no-cache-dir pwntools

# Set working directory
WORKDIR /root/htb

# Set default command
CMD ["/bin/bash", "-c", "-tail -f /dev/null"]
