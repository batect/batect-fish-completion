FROM alpine:3.12.1@sha256:d7342993700f8cd7aba8496c2d0e57be0666e80b4c441925fc6f9361fa81d10e

RUN apk add --no-cache py3-pip=20.1.1-r0
RUN pip install yapf==0.30.0

COPY style.yapf /root/.config/yapf/style
