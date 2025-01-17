FROM golang:1.16.2-alpine3.13

RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go build -o main .
CMD ["/app/main"]

EXPOSE 4747
