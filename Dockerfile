FROM gliderlabs/alpine
MAINTAINER jbstep, https://github.com/jbstep/docker-alpine

RUN apk add --update mosquitto mosquitto-clients && \
mkdir /work && chown nobody /work

VOLUME ["/work"]
WORKDIR /work

USER nobody

EXPOSE 1883

ENTRYPOINT ["mosquitto"]
