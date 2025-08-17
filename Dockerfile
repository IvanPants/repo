FROM golang:1.22.0

WORKDIR /usr/src/app

COPY . .

RUN go mod download

ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64

RUN  go build -o /parcel_app

CMD ["/parcel_app"]