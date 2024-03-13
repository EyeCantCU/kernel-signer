FROM ghcr.io/ublue-os/base-main:latest AS kernel-signer-test

COPY certs/ /etc/pki/kernel/

RUN ostree container commit

FROM kernel-signer-test AS kernel-signer-test-cachyos

RUN wget https://copr.fedorainfracloud.org/coprs/bieszczaders/kernel-cachyos/repo/fedora-$(rpm -E %fedora)/bieszczaders-kernel-cachyos-fedora-$(rpm -E %fedora).repo -O /etc/yum.repos.d/_copr_cachyos_kernel.repo && \
    rpm-ostree cliwrap install-to-root / && \
    rpm-ostree override remove \
        kernel \
        kernel-core \
        kernel-modules \
        kernel-modules-core \
        kernel-modules-extra \
        --install \
        kernel-cachyos

RUN ostree container commit
