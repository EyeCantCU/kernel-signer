FROM ghcr.io/eyecantcu/podman-minimal:latest

COPY . .

ENTRYPOINT ["./entrypoint.sh"]
