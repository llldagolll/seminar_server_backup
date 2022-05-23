. ./.env

set -eu

rsync -aP --exclude-from='/home/dago/seminar_server_backup/excluded_patterns.txt' ${BACKUPDIR}\/ ${SRCDIR}
