#! /bin/bash

set -e

export PASSWORD="$POSTGRES_PASSWORD"

psql -p "$POSTGRES_PORT" -U "$POSTGRES_USER"\
  -d "$POSTGRES_DB"\
  -f /init.sql.template

