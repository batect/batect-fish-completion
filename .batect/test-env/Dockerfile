FROM alpine:3.18.3@sha256:7144f7bab3d4c2648d7e59409f15ec52a18006a128c733fcff20d3a4a54ba44a

RUN apk --no-cache add \
    bash==5.2.15-r5 \
    fish==3.6.1-r2 \
    python3==3.11.5-r0 \
    util-linux==2.38.1-r8 # For uuidgen

COPY load_batect_completion.fish /usr/share/fish/vendor_conf.d
