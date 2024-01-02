#!/usr/bin/bash

set -ouex pipefail

kernel_version=""

if command -v rpm-ostree; then
  if grep "kernel-surface" <<< $(rpm -qa); then
    kernel_version=$(rpm -qa | grep kernel-surface-[0-9] | sed 's/kernel-surface-//')
  else
    kernel_version=$(rpm -qa | grep kernel-[0-9] | sed 's/kernel-//')
  fi
  rpm-ostree install sbsigntools openssl
fi

# Private key
if [[ "${PRIVKEY}" == /* ]]; then
  PRIVKEY_PATH="${PRIVKEY}"
else
  PRIVKEY_PATH="/etc/pki/kernel/private/private_key.priv"
  mkdir -p "$(dirname "$PRIVKEY_PATH")"
  if [[ "${PRIVKEY}" == ./* ]]; then
    cp "${PRIVKEY}" "${PRIVKEY_PATH}"
  elif [[ "${PRIVKEY}" == http* ]]; then
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
  if [[ "${PUBKEY}" == ./* ]]; then
    cp "${PUBKEY}" "${PUBKEY_PATH}"
  elif [[ "${PUBKEY}" == http* ]]; then
    wget -q "${PUBKEY}" -O "${PUBKEY_PATH}"
  else
    echo "${PUBKEY}" > "${PUBKEY_PATH}"
  fi
fi

echo "Signing kernel..."

CRT_PATH=$(echo $(dirname "$PUBKEY_PATH")/public_key.crt)

openssl x509 -in $PUBKEY_PATH -out $CRT_PATH
sbsign --cert $CRT_PATH --key $PRIVKEY_PATH /usr/lib/modules/$kernel_version/vmlinuz
sbsign --cert $CRT_PATH --key $PRIVKEY_PATH /usr/lib/modules/$kernel_version/vmlinuz-virt.efi

if command -v ostree; then
  rm -rf /tmp/* /var/*
  mkdir -p /var/lib/bluetooth
  ostree container commit
fi
