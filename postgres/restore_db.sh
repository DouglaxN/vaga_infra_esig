#!/bin/bash

DB_NAME="d_database"
DB_USER="$USER"
DUMP_FILE="$1"

# Check if the dump file argument is provided
if [ -z "$DUMP_FILE" ]; then
    echo "Usage: $0 <dump_file.sql>"
    exit 1
fi

# Check if the dump file exists
if [ ! -f "$DUMP_FILE" ]; then
    echo "Not find $DUMP_FILE"
    exit 1
fi

echo "Recreating database '$DB_NAME'..."

# Drop and recreate the database
psql -U $DB_USER postgres <<EOF
DROP DATABASE IF EXISTS $DB_NAME;
CREATE DATABASE $DB_NAME;
EOF

echo "Restoring database '$DB_NAME'..."

# Restore the database from the dump file
psql -U $DB_USER $DB_NAME < $DUMP_FILE

echo "Database restoration completed."
