FROM alpine:latest
ENV PORT    3000
RUN apk add --no-cache ca-certificates tzdata
COPY ./assets /assets
COPY ./config /config
COPY ./proxypool-linux-amd64 /
RUN ls

CMD ./proxypool-linux-amd64 -c ./config/config.yaml
