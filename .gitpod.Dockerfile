FROM gingerich/gitpod-devspace:latest

ENV TRIGGER_REBUILD 1

# Install doctl
RUN cd ~ && \
    wget https://github.com/digitalocean/doctl/releases/download/v1.70.0/doctl-1.70.0-linux-amd64.tar.gz && \
    tar xf ~/doctl-1.70.0-linux-amd64.tar.gz && \
    sudo mv ~/doctl /usr/local/bin