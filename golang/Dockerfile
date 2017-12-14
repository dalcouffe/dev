FROM daspoonman/spacemacs

ENV GOROOT /usr/local/go
ENV GOPATH ${USER_HOME}/go:${USER_HOME}/code/go
ENV GOVERSION 1.9.2
ENV PATH ${PATH}:${GOROOT}/bin:${USER_HOME}/go/bin:${USER_HOME}/code/go

RUN curl -k -o /tmp/go.tar.gz https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz \
  && sudo tar -C /usr/local -xzf /tmp/go.tar.gz \
  && rm /tmp/go.tar.gz \
  && go get -u github.com/golang/dep/cmd/dep \
  && go get github.com/LK4D4/vndr \
  && go get neugram.io/ng \
  && go get -u -v github.com/skelterjohn/wgo \
  && go get -u -v github.com/nsf/gocode \
  && go get -u -v github.com/rogpeppe/godef \
  && go get -u -v golang.org/x/tools/cmd/guru \
  && go get -u -v golang.org/x/tools/cmd/gorename \
  && go get -u -v golang.org/x/tools/cmd/goimports
  # && gometalinter --install --update
  # && go get -u -v github.com/alecthomas/gometalinter
  # && gocode set autobuild true
