# syntax=docker/dockerfile:1
# Build the application from source
FROM golang:1.9-alpine

EXPOSE 8000

WORKDIR /go/src/app

#RUN glide up
RUN apk --no-cache add curl git && \
    curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh


COPY . .

#RUN CGO_ENABLED=0 GOOS=linux go build -o /docker-gs-ping

RUN dep ensure

RUN go build -o auth-api

CMD /go/src/app/auth-api

#USER admin:admin

#ENTRYPOINT ["/docker-gs-ping"]