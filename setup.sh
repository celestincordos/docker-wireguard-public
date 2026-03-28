#!/bin/bash
set -euo pipefail

if [ ! -f .env ]; then
    echo "Error: .env file not found. Copy .env.example to .env and fill in the values."
    exit 1
fi

source .env

mkdir -p config/wg_confs
envsubst < config/wg0.conf.template > config/wg_confs/wg0.conf
echo "Generated config/wg_confs/wg0.conf"
