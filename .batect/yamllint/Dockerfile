FROM alpine:3.12.2@sha256:25f5332d060da2c7ea2c8a85d2eac623bd0b5f97d508b165f846c7d172897438

RUN apk add --no-cache yamllint=1.23.0-r0

COPY bundle-default.yml /root/.config/yamllint/config
