#!/bin/bash

# main.nft hash:				{{ include "main.nft" | sha256sum }}
# hardening.nft hash:		{{ include "hardening.nft" | sha256sum }}
# workstation.nft hash: {{ include "workstation.nft" | sha256sum }}
nft -f ./main.nft
rc-service nftables save
