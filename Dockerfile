FROM google/cloud-sdk:alpine

ENV HELM_VERSION="v3.1.1"
ENV KUBE_VERSION="v1.17.3"

RUN apk add --no-cache \
    ca-certificates \
    openssh \
    git \
    curl && \
    wget -q https://storage.googleapis.com/kubernetes-release/release/${KUBE_VERSION}/bin/linux/amd64/kubectl \
         -O /usr/local/bin/kubectl && \
    wget -q https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz -O - | tar -xzO linux-amd64/helm \
         > /usr/local/bin/helm && \
    chmod +x /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/helm && \
    curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh" | bash && \
    mv kustomize /usr/local/bin/ 

VOLUME ["/root/.config"]
