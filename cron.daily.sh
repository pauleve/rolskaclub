#!/usr/bin/env bash
export PATH="${HOME}/.local/bin:${PATH}"
set -e
[ -z "$(type -p jinja)" ] && pip install --break-system-packages jinja-cli
cd "$(dirname "$0")"
make update-all data render publish >cron.log 2>&1
