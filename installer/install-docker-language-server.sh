#!/bin/sh

set -e

"$(dirname "$0")/go_install.sh" github.com/docker/docker-language-server/cmd/docker-language-server@latest
