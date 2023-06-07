FROM alpine:3.18.0@sha256:02bb6f428431fbc2809c5d1b41eab5a68350194fb508869a33cb1af4444c9b11

RUN apk --no-cache add \
    bash==5.2.15-r5 \
    fish==3.6.1-r2 \
    python3==3.11.3-r11 \
    util-linux==2.38.1-r8 # For uuidgen

COPY load_batect_completion.fish /usr/share/fish/vendor_conf.d
