FROM ghcr.io/ublue-os/base-main:latest AS kernel-signer-test

COPY certs/ /etc/pki/kernel/

RUN ostree container commit
