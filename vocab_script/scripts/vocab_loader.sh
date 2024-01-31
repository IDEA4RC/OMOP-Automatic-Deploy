#!/bin/bash

set -e

apk add postgresql-client

cd ../

PGPASSWORD=$VOCAB_PG_PASSWORD psql -v vocab_schema=$VOCAB_PG_SCHEMA -h $VOCAB_PG_HOST -U $VOCAB_PG_USER -d $VOCAB_PG_DATABASE -a -f /app/scripts/omop_vocab_ddl.sql

tables="DRUG_STRENGTH CONCEPT_SYNONYM CONCEPT_ANCESTOR CONCEPT_CLASS CONCEPT_RELATIONSHIP CONCEPT DOMAIN RELATIONSHIP VOCABULARY"

for table in $tables
do
    echo 'Now loading: ' $table
    PGPASSWORD=$VOCAB_PG_PASSWORD psql -h $VOCAB_PG_HOST -d $VOCAB_PG_DATABASE -U $VOCAB_PG_USER \
        -c "\COPY $VOCAB_PG_SCHEMA.$table FROM /app/files/$table.csv (DELIMITER E'\t', FORMAT CSV, NULL '""', QUOTE E'\b', HEADER, ENCODING 'UTF8')"
    echo 'Finished loading: ' $table
done

PGPASSWORD=$VOCAB_PG_PASSWORD psql -v vocab_schema=$VOCAB_PG_SCHEMA -h $VOCAB_PG_HOST -U $VOCAB_PG_USER -d $VOCAB_PG_DATABASE -a -f /app/scripts/002_OMOP-PrimaryKeys.sql

PGPASSWORD=$VOCAB_PG_PASSWORD psql -v vocab_schema=$VOCAB_PG_SCHEMA -h $VOCAB_PG_HOST -U $VOCAB_PG_USER -d $VOCAB_PG_DATABASE -a -f /app/scripts/003_OMOP-Indices.sql

PGPASSWORD=$VOCAB_PG_PASSWORD psql -v vocab_schema=$VOCAB_PG_SCHEMA -h $VOCAB_PG_HOST -U $VOCAB_PG_USER -d $VOCAB_PG_DATABASE -a -f /app/scripts/omop_vocab_indices.sql

PGPASSWORD=$VOCAB_PG_PASSWORD psql -v vocab_schema=$VOCAB_PG_SCHEMA -h $VOCAB_PG_HOST -U $VOCAB_PG_USER -d $VOCAB_PG_DATABASE -a -f /app/scripts/004_OMOP-Constraints.sql

echo 'All done, shutting down. Feel free to remove container.'