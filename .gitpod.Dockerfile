FROM gingerich/gitpod-devspace:latest

# Install doctl
RUN cd ~ && \
    wget https://github.com/digitalocean/doctl/releases/download/v1.70.0/doctl-1.70.0-linux-amd64.tar.gz && \
    tar xf ~/doctl-1.70.0-linux-amd64.tar.gz && \
    sudo mv ~/doctl /usr/local/bin

# Install kubeconfig
RUN doctl auth init --context gitpod --access-token $DO_API_KEY && \
    doctl kubernetes cluster kubeconfig save $DO_CLUSTER_ID