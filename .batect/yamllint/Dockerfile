FROM alpine:3.12.1@sha256:d7342993700f8cd7aba8496c2d0e57be0666e80b4c441925fc6f9361fa81d10e

RUN apk add --no-cache yamllint=1.23.0-r0

COPY bundle-default.yml /root/.config/yamllint/config
