#!/bin/bash

# PostgreSQL login credentials
DB_USER="postgres"
DB_PASSWORD="MyWeak_Pa55w0rd"

# Database name and user to create
NEW_DB_NAME="strapi"
NEW_DB_USER="strapi"
NEW_DB_PASS="strapi"

# Create the database
sudo -u $DB_USER psql -c "CREATE DATABASE $NEW_DB_NAME;"

# Create the user and grant privileges
sudo -u $DB_USER psql -c "CREATE USER $NEW_DB_USER WITH PASSWORD '$NEW_DB_PASS';"
sudo -u $DB_USER psql -d $NEW_DB_NAME -c "GRANT ALL PRIVILEGES ON DATABASE $NEW_DB_NAME TO $NEW_DB_USER;"
sudo -u $DB_USER psql -d $NEW_DB_NAME -c "GRANT USAGE ON SCHEMA public TO $NEW_DB_USER;"
sudo -u $DB_USER psql -d $NEW_DB_NAME -c "GRANT CREATE ON SCHEMA public TO $NEW_DB_USER;"



