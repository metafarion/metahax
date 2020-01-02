#!/bin/bash

# A script to set up Portage to use the Metahax overlay
# for us lazy people.

REPO_NAME="metahax"
REPO_URL="https://github.com/metafarion/metahax"
OVERLAY_DIR="/var/db/repos/${REPO_NAME}"

# Make sure we are root
if [[ "$EUID" -ne 0 ]]; then
  printf "This script must be run as root.\n\n"; exit 1
fi

# Make sure we have Portage
which emerge > /dev/null 2>&1

if [[ $? -ne 0 ]]; then
  printf "Portage doesn't seem to be installed...\n\n"; exit 1
fi

# Make sure git is installed
qlist -Ieq "dev-vcs/git" > /dev/null

if [[ $? -ne 0 ]] ; then

  while true; do

    read -r -p "Y'all ain't got git.  Install it? [Y/N] " yn

    case $yn in
        [Yy][Ee][Ss]|[Yy])
    printf "\nOn it!\n\n"
    emerge "dev-vcs/git" || exit 1 && break
    ;;
        [Nn][Oo]|[Nn])
    printf "\nMetahax is a git overlay; it needs git to function.\n\n"
    exit 1
    ;;
        *)
    echo "\nNo comprende.\n\n"
    ;;
    esac
  done
fi

# Get the goods, make the overlay directory if necessary
printf "Fetching ${REPO_NAME}.conf\n\n"
wget "https://raw.githubusercontent.com/metafarion/metahax/master/${REPO_NAME}.conf" -O "/etc/portage/repos.conf/${REPO_NAME}.conf"

if [ ! -d "${OVERLAY_DIR}" ]; then
  printf "Creating ${OVERLAY_DIR}\n\n"
  mkdir -p "${OVERLAY_DIR}"
fi

# Initial sync
printf "Syncing overlay.\n\n"
emaint sync -r "${REPO_NAME}"

printf "Hecks yeah!  We ready to roll!"