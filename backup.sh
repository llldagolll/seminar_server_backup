. ./.env

set -eu

./rsync-time-backup/rsync_tmbackup.sh ${SRCDIR} ${BACKUPDIR} excluded_patterns.txt
# ./rsync-time-backup/rsync_tmbackup.sh / /home/dago/backup/store excluded_patterns.txt
