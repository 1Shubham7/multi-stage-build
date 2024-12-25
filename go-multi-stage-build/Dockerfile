FROM golang:1.23 AS builder

WORKDIR /app

COPY . .

RUN go build -o calculator .

FROM alpine:latest

WORKDIR /app

COPY --from=builder /app/calculator .

ENTRYPOINT ["/calculator"]
