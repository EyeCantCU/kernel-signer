FROM ghcr.io/eyecantcu/podman-minimal:latest

COPY . .

ENTRYPOINT ["/bin/bash", "-c", "podman exec -e PRIVKEY=$PRIVKEY -e PUBKEY=$PUBKEY -w $PWD --privledged $IMAGE ./sign-kernel.sh"]
