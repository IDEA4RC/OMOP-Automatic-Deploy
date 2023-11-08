
# Use the official postgres image as the base image
FROM postgres:latest

# Set the environment variables for the postgres image
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD mysecretpassword
ENV POSTGRES_DB test-omop

VOLUME /var/lib/postgresql/data

# Copy the SQL script to initialize the database
COPY ./base_sql_scripts/001_OMOP-DDL.sql /docker-entrypoint-initdb.d/
COPY ./base_sql_scripts/002_OMOP-PrimaryKeys.sql /docker-entrypoint-initdb.d/
COPY ./base_sql_scripts/003_OMOP-Indices.sql /docker-entrypoint-initdb.d/
COPY ./base_sql_scripts/004_OMOP-Constraints.sql /docker-entrypoint-initdb.d/

# Expose the default postgres port
EXPOSE 5432
