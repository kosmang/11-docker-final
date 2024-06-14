FROM golang:1.22.0

WORKDIR /usr/src/app

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /parcel

CMD ["/parcel"]
# docker build --tag parcel-app:v1 .
# docker run kosmang/parcel-app:v1
# docker build -t kosmang/parcel-app:v1 .
