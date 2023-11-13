# Use the official postgres image as the base image
FROM postgres:16.0-alpine3.18

# Set the environment variables for the postgres image
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD mysecretpassword
ENV POSTGRES_DB test-omop

VOLUME /var/lib/postgresql/data

# Copy the SQL script to initialize the database
COPY ./base_sql_scripts/* /docker-entrypoint-initdb.d/

# Expose the default postgres port
EXPOSE 5432
