#!/bin/bash

nft -f ./main.nft
rc-service nftables save
