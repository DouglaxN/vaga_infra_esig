#!/bin/bash

DB_NAME="my_database"
DB_USER="postgres"
DUMP_FILE="db_dump_$(date +%Y%m%d_%H%M%S).sql"

mkdir -p $DUMP_DIR

pg_dump -U $DB_USER $DB_NAME > $DUMP_DIR/${DB_NAME}_$DATE.sql

if [ $? -eq 0 ]; then
    echo "Database dump successful: $DUMP_DIR/${DB_NAME}_$DATE.sql"
else
    echo "Database dump failed!"
fi