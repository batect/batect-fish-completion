FROM alpine:3.12.2@sha256:25f5332d060da2c7ea2c8a85d2eac623bd0b5f97d508b165f846c7d172897438

RUN apk add --no-cache py3-pip=20.1.1-r0
RUN pip install yapf==0.30.0

COPY style.yapf /root/.config/yapf/style
