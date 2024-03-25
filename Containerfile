FROM ghcr.io/ublue-os/base-main:latest AS kernel-signer-test

COPY certs/ /etc/pki/kernel/

RUN ostree container commit

FROM kernel-signer-test AS kernel-signer-test-surface

RUN wget -O /etc/yum.repos.d/linux-surface.repo \
    https://pkg.surfacelinux.com/fedora/linux-surface.repo && \
    wget https://github.com/linux-surface/linux-surface/releases/download/silverblue-20201215-1/kernel-20201215-1.x86_64.rpm && \
    rpm-ostree override replace ./*.rpm \
	    --remove kernel-core \
	    --remove kernel-modules \
	    --remove kernel-modules-extra \
        --remove libwacom \
        --remove libwacom-data \
	    --install kernel-surface \
	    --install iptsd \
        --install libwacom-surface \
        --install libwacom-surface-data

RUN ostree container commit