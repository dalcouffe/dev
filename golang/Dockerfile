FROM daspoonman/spacemacs:latest

ENV GOROOT=/usr/local/go
ENV GOPATH=${USER_HOME}/go:${USER_HOME}/code/go
ENV GOVERSION=1.15.5
ENV GO111MODULE=on
ENV PATH=${PATH}:${GOROOT}/bin:${USER_HOME}/go/bin:${USER_HOME}/code/go/bin

RUN curl -k -o /tmp/go.tar.gz https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz \
  && sudo tar -C /usr/local -xzf /tmp/go.tar.gz \
  && rm /tmp/go.tar.gz \
  && mkdir -p ${USER_HOME}/go/bin \
  && curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh \
  && mkdir /tmp/protoc \
  && curl -o /tmp/protoc/protoc.zip -L https://github.com/protocolbuffers/protobuf/releases/download/v3.6.1/protoc-3.6.1-linux-x86_64.zip \
  && sh -c 'cd /tmp/protoc && unzip protoc.zip && sudo cp ./bin/protoc /usr/local/bin && sudo cp -r ./include/* /usr/local/include' \
  && rm -rf /tmp/protoc \
  && GO111MODULE=on CGO_ENABLED=0 go get -v -trimpath -ldflags '-s -w' github.com/golangci/golangci-lint/cmd/golangci-lint \
  && go get -u -v golang.org/x/tools/gopls@latest \
  && go get -u -v golang.org/x/tools/cmd/godoc \
  && go get -u -v golang.org/x/tools/cmd/goimports \
  && go get -u -v golang.org/x/tools/cmd/gorename \
  && go get -u -v golang.org/x/tools/cmd/guru \
  && go get -u -v github.com/cweill/gotests/... \
  && go get -u -v github.com/davidrjenni/reftools/cmd/fillstruct \
  && go get -u -v github.com/fatih/gomodifytags \
  && go get -u -v github.com/godoctor/godoctor \
  && go get -u -v github.com/haya14busa/gopkgs/cmd/gopkgs \
  && go get -u -v github.com/josharian/impl \
  && go get -u -v github.com/rogpeppe/godef \
  && go get -u -v google.golang.org/grpc \
  && go get -u -v github.com/golang/protobuf/protoc-gen-go
  # && go get github.com/fullstorydev/grpcurl \
  # && go install github.com/fullstorydev/grpcurl/cmd/grpcurl

ENV GO111MODULE=on
