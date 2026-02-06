#!/bin/bash

DB_NAME="d_database"
DB_USER="$USER"
DUMP_FILE="$1"

if [ -z "$DUMP_FILE" ]; then
    echo "Usage: $0 <dump_file.sql>"
    exit 1
fi

psql -U $DB_USER $DB_NAME < $DUMP_FILE

if [ $? -eq 0 ]; then
    echo "Database restore successful from: $DUMP_FILE"
else
    echo "Database restore failed!"
fi