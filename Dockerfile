FROM ghcr.io/eyecantcu/podman-minimal:latest

COPY certs .

ENTRYPOINT ["/bin/bash", "-c", "podman exec -e PRIVKEY=$PRIVKEY -e PUBKEY=$PUBKEY --privledged $IMAGE wget -q https://raw.githubusercontent.com/EyeCantCU/kernel-signer/main/sign-kernel.sh -P /tmp && /tmp/sign-kernel.sh"]
