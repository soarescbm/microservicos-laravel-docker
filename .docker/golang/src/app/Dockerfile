FROM golang:1.11.11-alpine3.9

WORKDIR /go/src/app

COPY  . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["app"]


