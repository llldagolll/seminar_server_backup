. ./.env

set -eu

# mkdir -p ./log/backup
mkdir ${BACKUPDIR} && touch ${BACKUPDIR}/backup.marker
