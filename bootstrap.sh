#!/bin/sh

# bootstrap.sh --- Bootstrap Doom Emacs

EMACS_DIR="${HOME}/.config/emacs"
DOOM_REPO="https://github.com/doomemacs/doomemacs"
DOOM_BRANCH="master"

# -----------------------------------------------------------------------------

git clone --depth 1 --no-tags --branch "${DOOM_BRANCH}" "${DOOM_REPO}" "${EMACS_DIR}"

"${EMACS_DIR}/bin/doom" install --force

