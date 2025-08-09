FROM golang:1.21-alpine AS builder
WORKDIR /app
COPY . .
RUN go build -o parcel-tracker main.go

FROM alpine:latest
WORKDIR /app
COPY --from=builder /app/parcel-tracker .
CMD ["./parcel-tracker"]