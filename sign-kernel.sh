#!/usr/bin/bash

kernel_version=$(uname -r)

if command -v rpm-ostree; then
  if grep -qv "kernel-devel" <<< $(rpm -qa); then
    rpm-ostree install kernel-devel
  fi
fi

# Private key
if [[ "${PRIVKEY}" == /* ]]; then
  PRIVKEY_PATH="${PRIVKEY}"
else
  PRIVKEY_PATH="/etc/pki/kernel/private/private_key.priv"
  mkdir -p "$(dirname "$PRIVKEY_PATH")"
  if [[ "${PRIVKEY}" == http* ]]; then
    wget -q "${PRIVKEY}" -O "${PRIVKEY_PATH}"
  else
    echo "${PRIVKEY}" > "${PRIVKEY_PATH}"
  fi
fi

# Public key
if [[ "${PUBKEY}" == /* ]]; then
  PUBKEY_PATH="${PUBKEY}"
else
  PUBKEY_PATH="/etc/pki/kernel/public/public_key.der"
  mkdir -p "$(dirname "$PUBKEY_PATH")"
  if [[ "${PUBKEY}" == http* ]]; then
    wget -q "${PUBKEY}" -O "${PUBKEY_PATH}"
  else
    echo "${PUBKEY}" > "${PUBKEY_PATH}"
  fi
fi

echo "Signing kernel..."
cd /usr/src/kernels/$kernel_version/scripts
./sign-file sha256 $PRIVKEY_PATH $PUBKEY_PATH /usr/lib/modules/$kernel_version/vmlinuz
./sign-file sha256 $PRIVKEY_PATH $PUBKEY_PATH /usr/lib/modules/$kernel_version/vmlinuz-virt.efi

if command -v ostree; then
  rm -rf /tmp/* /var/*
  mkdir -p /var/lib/bluetooth
  ostree container commit
fi