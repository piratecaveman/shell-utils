#!/usr/bin/env bash
#
# ~/.bash_profile
#

source_file() {
	if [[ -f "${1}" ]]; then
		# shellcheck disable=1090
		source "${1}"
	fi
}

SHELL_UTILS="${HOME}/.config/shell-utils"
SCRIPTS="${SHELL_UTILS}/scripts"

SOURCES_LIST=(
	"${SCRIPTS}/exports.sh"
	"${HOME}/.bashrc"
)

for item in "${SOURCES_LIST[@]}"; do
	source_file "${item}"
done

setproxy

source /home/wraith/.config/broot/launcher/bash/br
