FROM alpine:3.18.2@sha256:82d1e9d7ed48a7523bdebc18cf6290bdb97b82302a8a9c27d4fe885949ea94d1

RUN apk --no-cache add \
    bash==5.2.15-r5 \
    fish==3.6.1-r2 \
    python3==3.11.4-r0 \
    util-linux==2.38.1-r8 # For uuidgen

COPY load_batect_completion.fish /usr/share/fish/vendor_conf.d
