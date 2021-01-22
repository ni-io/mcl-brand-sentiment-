# Set the script to fail fast if there
# is an error or a missing variable

set -eux
set -o pipefail

#!/bin/sh

# Download the latest backup from
# Heroku and gzip it
export APP_NAME=ribbitweet

heroku pg:backups:download --output=/tmp/pg_backup.dump --app $APP_NAME
gzip /tmp/pg_backup.dump

# Encrypt the gzipped backup file
# using GPG passphrase
PG_BACKUP_PASSWORD=$(openssl rand -base64 32)
export PG_BACKUP_PASSWORD=PG_BACKUP_PASSWORD

gpg --yes --batch --passphrase=$PG_BACKUP_PASSWORD -c /tmp/pg_backup.dump.gz

# Remove the plaintext backup file

rm /tmp/pg_backup.dump.gz

# Generate backup filename based
# on the current date

BACKUP_FILE_NAME="heroku-backup-$(date '+%Y-%m-%d_%H.%M').gpg"

# Upload the file to S3 using
# AWS CLI
export S3_BUCKET_NAME=heroku-pg-backups

aws s3 cp /tmp/pg_backup.dump.gz.gpg "s3://${S3_BUCKET_NAME}/${BACKUP_FILE_NAME}"

# Remove the encrypted backup file

rm /tmp/pg_backup.dump.gz.gpg
