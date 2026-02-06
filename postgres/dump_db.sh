#!/bin/bash

DB_NAME="d_database"
DB_USER="$USER"
DUMP_DIR="./db_dumps"
DATE=$(date +%Y%m%d_%H%M%S)

mkdir -p "$DUMP_DIR"

pg_dump -U "$DB_USER" "$DB_NAME" > "$DUMP_DIR/${DB_NAME}_${DATE}.sql"

if [ $? -eq 0 ]; then
    echo "Database dump successful: $DUMP_DIR/${DB_NAME}_$DATE.sql"
else
    echo "Database dump failed!"
fi