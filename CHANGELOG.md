# Changelog

## 0.1.0 (2024-01-10)


### Features

* **action:** Handle local public/private keys, adjust defaults ([27b65e9](https://github.com/EyeCantCU/kernel-signer/commit/27b65e99eeb106cd3aa8d7edfa3ca457cb2bac64))
* **ci:** Test kernel signing against Ublue base image ([3eb6fc2](https://github.com/EyeCantCU/kernel-signer/commit/3eb6fc298e4600cc97cd26ede9f55d95a8490f25))
* **sign-kernel:** Add Surface kernel support ([e7744e6](https://github.com/EyeCantCU/kernel-signer/commit/e7744e61f2a24d94688a39f6586498aae8efe6c8))
* **sign-kernel:** Remove existing signatures with sbattach before signing ([298dba4](https://github.com/EyeCantCU/kernel-signer/commit/298dba4891a9c391a69b5e9f02cbc968aa69f004))
* **sign-kernel:** Support dnf ([85b1f1d](https://github.com/EyeCantCU/kernel-signer/commit/85b1f1d57dedb20199e20f18347dbc0922fc7d67))
* **sign-kernel:** Use sbsign, drop dependency on kernel-devel ([e98f86a](https://github.com/EyeCantCU/kernel-signer/commit/e98f86ac1097f0e4f07ad0fc0715bf5d6d890e58))
* Use newer version of Podman, convert to Docker action ([56b2153](https://github.com/EyeCantCU/kernel-signer/commit/56b2153b3c0c01d3761f8e4c820736abcf3cb17b))


### Bug Fixes

* **action:** Commit container as image with buildah ([d931ce8](https://github.com/EyeCantCU/kernel-signer/commit/d931ce87b915d52c0739a9b20ab142406b2eefb3))
* **action:** Copy kernel signing script to container's tmp dir, don't pass PWD ([f6354d5](https://github.com/EyeCantCU/kernel-signer/commit/f6354d5e021cf4df395ceccc326bbc8f93515c61))
* **action:** Pass tags used by container ([8611bb2](https://github.com/EyeCantCU/kernel-signer/commit/8611bb2b3dec7570862dfd0da08e678886d612f8))
* **action:** Replace container if already running ([f8aad8e](https://github.com/EyeCantCU/kernel-signer/commit/f8aad8e48ecdf3483b9c355f4874024c591df08a))
* **action:** Retrieve container ID if already running ([92398e4](https://github.com/EyeCantCU/kernel-signer/commit/92398e4ac8329da70b2295acd9366be5d8f6ae78))
* **action:** Start container and pass ID to podman exec ([cc9272e](https://github.com/EyeCantCU/kernel-signer/commit/cc9272e5bc077e722688cca6134d1d836b0a1213))
* **action:** Use action path when copying signing script with Podman ([206c136](https://github.com/EyeCantCU/kernel-signer/commit/206c136e2a31fd8512b8e1447f99eedccdcc612a))
* **action:** Use pseudo-TTY when running container ([99ac428](https://github.com/EyeCantCU/kernel-signer/commit/99ac428d4a11943089cc06e8f01f3c881d426b68))
* **action:** Wrap input in quotes ([198d305](https://github.com/EyeCantCU/kernel-signer/commit/198d3051467e57525741e88b8772606d39e38724))
* **Dockerfile:** Pass PWD to Podman, no longer use wget to fetch script ([019b72f](https://github.com/EyeCantCU/kernel-signer/commit/019b72fb9bd231bb0f2ffdb4db28068ccf0dddba))
* **sign-kernel:** Don't sign non-existant vmlinuz-virt.efi ([c7391b5](https://github.com/EyeCantCU/kernel-signer/commit/c7391b578a5709126bef4487c28c761c2630cd8b))
* **sign-kernel:** Retrieve kernel version via rpm ([93a1a0a](https://github.com/EyeCantCU/kernel-signer/commit/93a1a0a489d3a24b369289ac014d53309d7f82c3))
* **test:** Copy certs to image ([d07db9e](https://github.com/EyeCantCU/kernel-signer/commit/d07db9ec605268e412b5a6f469b3a69dbd352931))


### Miscellaneous Chores

* release v0.1.0 ([2b67b68](https://github.com/EyeCantCU/kernel-signer/commit/2b67b68373572821e55c094954d1bdf71f0982a1))
