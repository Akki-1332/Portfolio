FROM alpine:latest
RUN apk add thttpd
RUN adduser -D static
USER static
WORKDIR /home/static

COPY ./Portfolio .
CMD ["thttpd", "-D", "-h", "0.0.0.0", "-p", "80", "-d", "/home/static", "-u", "static", "-l", "-", "-M", "60"]
