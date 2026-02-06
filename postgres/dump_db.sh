#!/bin/bash

DB_NAME="d_database"
DB_USER="$USER"
DUMP_DIR="./db_dumps"
DATE=$(date +%Y%m%d_%H%M%S)

# Create the dump directory if it doesn't exist
mkdir -p "$DUMP_DIR"

# Dump the database to a file 
pg_dump -U "$DB_USER" "$DB_NAME" > "$DUMP_DIR/${DB_NAME}_${DATE}.sql"

# Check if the dump was successful
if [ $? -eq 0 ]; then
    echo "Database dump successful: $DUMP_DIR/${DB_NAME}_$DATE.sql"
else
    echo "Database dump failed!"
fi


# chmod +x postgres/dum_db.sh
# ./postgres/dump_db.sh
