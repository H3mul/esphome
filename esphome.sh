#!/bin/bash

# Decrypt secrets using SOPS, run esphome with the arguments to this script,
# and delete the decrypted secrets on exit

set -Eeuo pipefail
trap cleanup SIGINT SIGTERM ERR EXIT

cd $(git rev-parse --show-toplevel)

cleanup() {
  trap - SIGINT SIGTERM ERR EXIT

  rm -f config/secrets.yaml
}

sops -d config/secrets.sops.yaml > config/secrets.yaml
esphome $@