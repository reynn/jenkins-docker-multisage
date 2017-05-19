ARG GO_VERSION=1.8.0
FROM golang:${GO_VERSION} as BUILD

COPY . /go/src/github.com/reynn/jenkins-docker-multistage/

RUN cd /go/src/github.com/reynn/jenkins-docker-multistage \
    && go build -o /go-output-file

FROM alpine:3.5

WORKDIR /app

COPY --from=BUILD /go-output-file /app/go-output-file

ENTRYPOINT [ "/app/go-output-file" ]
