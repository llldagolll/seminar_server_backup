. ./.env

set -eu

rsync -avnP --delete --exclude-from=${LEAVEFILE} ${BACKUPDIR}\/latest/ ${SRCDIR} >>./log/restore/$(date +%Y-%m-%d-%s).log
