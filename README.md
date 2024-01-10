# Kernel Signer

An action for signing kernels inside containers.

## Usage

This is an example of what your workflow should look like:

```yaml
jobs:
  example:
    runs-on: ubuntu-latest

    permissions: {}

    name: Sign kernel inside container
    steps:
      - name: Sign kernel
        uses: EyeCantCU/kernel-signer@v0.1.0
        with:
          image: kernel-signer-test
          privkey: /path/to/privkey
          pubkey: /path/to/pubkey
          tags: |
            latest
            20240110
```

The image should contain the kernel you'd like to sign. The private and public keys can be passed as files on the image, files local to the source tree, secrets, URLs that contain either key, or plaintext. A singular tag can be passed, or a list of tags may be passed as in the example.
