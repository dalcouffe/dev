FROM daspoonman/spacemacs:next

ENV GOROOT=/usr/local/go
ENV GOPATH=${USER_HOME}/go:${USER_HOME}/code/go
ENV GOVERSION=1.10.4
ENV PATH=${PATH}:${GOROOT}/bin:${USER_HOME}/go/bin:${USER_HOME}/code/go/bin:/usr/local/kubebuilder/bin
ENV KB_VERSION=1.0.4

RUN curl -k -o /tmp/go.tar.gz https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz \
  && sudo tar -C /usr/local -xzf /tmp/go.tar.gz \
  && rm /tmp/go.tar.gz \
  && mkdir -p ${USER_HOME}/go/bin \
  && curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh \
  # && sudo curl -L -O https://github.com/kubernetes-sigs/kubebuilder/releases/download/v${KB_VERSION}/kubebuilder_${KB_VERSION}_linux_amd64.tar.gz \
  # && sudo tar -zxvf kubebuilder_${KB_VERSION}_linux_amd64.tar.gz \
  # && sudo mv kubebuilder_${KB_VERSION}_linux_amd64 /usr/local/kubebuilder \
  # && sudo rm kubebuilder_${KB_VERSION}_linux_amd64.tar.gz \
  # && go get sigs.k8s.io/kustomize \
  && go get github.com/LK4D4/vndr \
  && go get neugram.io/ng \
  && go get -u -v github.com/mdempsky/gocode \
  # && go get -u -v github.com/phenixrizen/gocode \
  # && go get -u -v github.com/stamblerre/gocode \
  && go get -u -v github.com/rogpeppe/godef \
  && go get -u -v golang.org/x/tools/cmd/guru \
  && go get -u -v golang.org/x/tools/cmd/gorename \
  && go get -u -v golang.org/x/tools/cmd/goimports
  # && curl -o /tmp/metalinter -L https://git.io/vp6lP \
  # && BINDIR=${USER_HOME}/go/bin sh /tmp/metalinter \
  # && rm /tmp/metalinter
