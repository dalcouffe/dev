FROM daspoonman/spacemacs:latest

ENV GOROOT=/usr/local/go
ENV GOPATH=${USER_HOME}/go:${USER_HOME}/code/go
ENV GOVERSION=1.11.4
ENV PATH=${PATH}:${GOROOT}/bin:${USER_HOME}/go/bin:${USER_HOME}/code/go/bin

RUN curl -k -o /tmp/go.tar.gz https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz \
  && sudo tar -C /usr/local -xzf /tmp/go.tar.gz \
  && rm /tmp/go.tar.gz \
  && mkdir -p ${USER_HOME}/go/bin \
  && curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh \
  && go get github.com/LK4D4/vndr \
  && go get -u -v github.com/mdempsky/gocode \
  && go get -u -v github.com/rogpeppe/godef \
  && go get -u -v golang.org/x/tools/cmd/guru \
  && go get -u -v golang.org/x/tools/cmd/gorename \
  && go get -u -v golang.org/x/tools/cmd/goimports \
  && go get -u -v github.com/zmb3/gogetdoc \
  && go get -u -v github.com/cweill/gotests/... \
  && go get -u -v github.com/haya14busa/gopkgs/cmd/gopkgs \
  && go get -u -v github.com/davidrjenni/reftools/cmd/fillstruct \
  && go get -u -v github.com/josharian/impl \
  && go get -u -v github.com/sourcegraph/go-langserver
