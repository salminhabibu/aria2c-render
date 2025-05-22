FROM alpine:latest

RUN apk add --no-cache aria2

COPY aria2.conf /root/.aria2/aria2.conf

EXPOSE 6800

CMD ["aria2c", "--conf-path=/root/.aria2/aria2.conf"]
