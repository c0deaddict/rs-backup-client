#!/bin/bash -e
exec /usr/bin/rs-backup-run --remote-host="$REMOTE_HOST" --remote-user="${REMOTE_USER}" -v -s
