#!/bin/bash

# main.nft hash:				{{ include "main.nft" | sha256sum }}
# hardening.nft hash:		{{ include "hardening.nft" | sha256sum }}
# workstation.nft hash: {{ include "workstation.nft" | sha256sum }}
if $(which nft >/dev/null 2>&1); then
  nft -f ./main.nft
  rc-service nftables save
fi
