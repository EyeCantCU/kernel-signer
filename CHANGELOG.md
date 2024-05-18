# Changelog

## [0.2.1](https://github.com/EyeCantCU/kernel-signer/compare/v0.2.0...v0.2.1) (2024-05-18)


### Bug Fixes

* **action:** Allow overriding default tag, default to latest ([888035b](https://github.com/EyeCantCU/kernel-signer/commit/888035b167e87d9a1c376a8fec1e8d71cd6a7826))
* **action:** Attempt to pull image if unavailable ([c6cd4d5](https://github.com/EyeCantCU/kernel-signer/commit/c6cd4d543157750c5c87b14d65150eb1d8cf8ba5))
* **action:** Only pull if missing from local storage ([4fa410e](https://github.com/EyeCantCU/kernel-signer/commit/4fa410ebb9f6188d5fa3647d5423a5db97c672c0))
* **action:** Support passing repository, default to localhost ([6101f34](https://github.com/EyeCantCU/kernel-signer/commit/6101f347773ffdf20246a891aae56195140c38d0))

## [0.2.0](https://github.com/EyeCantCU/kernel-signer/compare/v0.1.3...v0.2.0) (2024-05-16)


### Features

* **action:** Allow passing a custom kernel suffix ([5089a88](https://github.com/EyeCantCU/kernel-signer/commit/5089a889c17b3e842f4535313c7286260cf4ee9c))


### Bug Fixes

* **action:** Use image basename as container name ([52eae3a](https://github.com/EyeCantCU/kernel-signer/commit/52eae3a2ee3a767436cb353be4fdfea15358aa69))
* **sign-kernel:** Properly substitute kernel_suffix value ([#15](https://github.com/EyeCantCU/kernel-signer/issues/15)) ([e26229d](https://github.com/EyeCantCU/kernel-signer/commit/e26229dde649a43bd17eaacc1e768a15d7bf0fd1))

## [0.1.3](https://github.com/EyeCantCU/kernel-signer/compare/v0.1.2...v0.1.3) (2024-02-04)


### Features

* **sign-kernel:** get kernel version using regex ([#8](https://github.com/EyeCantCU/kernel-signer/issues/8)) ([e88ca98](https://github.com/EyeCantCU/kernel-signer/commit/e88ca98f2f8453aef73aafe3827c873d47926d75))


### Miscellaneous Chores

* release v0.1.3 ([4a1bcd0](https://github.com/EyeCantCU/kernel-signer/commit/4a1bcd0e19ce56ece0f178e34c4079e771e62301))

## [0.1.2](https://github.com/EyeCantCU/kernel-signer/compare/v0.1.1...v0.1.2) (2024-01-11)


### Bug Fixes

* **action:** Tag image after it's been committed ([7f3cbf0](https://github.com/EyeCantCU/kernel-signer/commit/7f3cbf0995551633c8fe4eb3aa76958d0ae4b5bc))


### Miscellaneous Chores

* release v0.1.2 ([4c818f6](https://github.com/EyeCantCU/kernel-signer/commit/4c818f61524c8e5756f39872fe85de90c6db8d4d))

## [0.1.1](https://github.com/EyeCantCU/kernel-signer/compare/v0.1.0...v0.1.1) (2024-01-11)


### Bug Fixes

* **action:** Set entrypoint to bash when retrieving container ID ([c6ce092](https://github.com/EyeCantCU/kernel-signer/commit/c6ce09237eae9bc59c76622c4f8b3189ade3b8aa))


### Miscellaneous Chores

* release v0.1.1 ([874b5c7](https://github.com/EyeCantCU/kernel-signer/commit/874b5c73915fce087a89bc01ce331ba99d6301af))

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
