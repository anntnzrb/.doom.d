#!/bin/sh

# bootstrap.sh --- Bootstrap Doom Emacs

EMACS_DIR="${HOME}/.config/emacs"
DOOM_REPO='https://github.com/doomemacs/doomemacs'
DOOM_BRANCH='master'
DOOM_BIN="${EMACS_DIR}/bin/doom"
DOOM_FLAGS='--verbose --force --benchmark --color'

die() {
	printf "%s\n" "${@}" >&2
	exit 1
}

# -----------------------------------------------------------------------------

git clone --depth 1 --no-tags --branch "${DOOM_BRANCH}" "${DOOM_REPO}" "${EMACS_DIR}" || :

"${DOOM_BIN}" install ${DOOM_FLAGS} --aot || die 'Failed to install Doom Emacs'
"${DOOM_BIN}" upgrade ${DOOM_FLAGS} --aot || die 'Failed to upgrade Doom Emacs'
"${DOOM_BIN}" sync ${DOOM_FLAGS} --aot --gc -u || die 'Failed to sync Doom Emacs'
"${DOOM_BIN}" doctor
