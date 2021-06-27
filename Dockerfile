FROM golang:buster

WORKDIR /go/src/lmt

COPY . .
RUN go build main.go
RUN mv main /bin/lmt

CMD ["/bin/lmt"]
