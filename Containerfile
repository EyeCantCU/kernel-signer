FROM ghcr.io/ublue-os/base-main:latest AS kernel-signer-test

RUN ostree container commit
