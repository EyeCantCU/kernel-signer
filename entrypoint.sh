#!/usr/bin/bash
podman exec -e PRIVKEY=$PRIVKEY -e PUBKEY=$PUBKEY -w $PWD --privledged $IMAGE ./sign-kernel.sh
