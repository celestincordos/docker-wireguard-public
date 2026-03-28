#!/bin/bash
set -euo pipefail

if [ ! -f .env ]; then
    echo "Error: .env file not found. Copy .env.example to .env and fill in the values."
    exit 1
fi

source .env

envsubst < config/wg0.conf.template > config/wg0.conf
echo "Generated config/wg0.conf"
