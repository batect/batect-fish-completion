FROM alpine:3.18.4@sha256:eece025e432126ce23f223450a0326fbebde39cdf496a85d8c016293fc851978

RUN apk --no-cache add \
    bash==5.2.15-r5 \
    fish==3.6.1-r2 \
    python3==3.11.5-r0 \
    util-linux==2.38.1-r8 # For uuidgen

COPY load_batect_completion.fish /usr/share/fish/vendor_conf.d
