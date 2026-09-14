#! /bin/bash

export PGPASSWORD="$POSTGRES_PASSWORD"

if [ -n "$MIGRATION_VERSION" ]; then
  echo "Migrating to version $MIGRATION_VERSION"
  migrate -path=/migrations/ -database="postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_DB}?sslmode=disable" goto $MIGRATION_VERSION
else
  echo "Migrating up"
  migrate -path=/migrations/ -database="postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_DB}?sslmode=disable" up
fi
