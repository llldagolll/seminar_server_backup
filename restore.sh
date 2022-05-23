. ./.env

set -eu

rsync -avnP --delete --exclude-from='/home/dago/seminar_server_backup/excluded_patterns.txt' ${BACKUPDIR}\/latest/ ${SRCDIR} >> ./log/$(date +%Y-%m-%d-%s).log
