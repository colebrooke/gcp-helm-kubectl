FROM google/cloud-sdk:alpine

ENV HELM_VERSION="v3.1.1"

RUN apk add --no-cache \
    ca-certificates \
    openssh \
    bash \
    git \
    curl && \
    wget -q https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz -O - | tar -xzO linux-amd64/helm > /usr/local/bin/helm && \
    chmod +x /usr/local/bin/helm

CMD bash
