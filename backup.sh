. ./.env

set -eu

./rsync-time-backup/rsync_tmbackup.sh --log-dir ./log/backup  ${SRCDIR} ${BACKUPDIR} excluded_patterns.txt
