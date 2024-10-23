#!/bin/sh
psql -c "CREATE USER postgreuser WITH SUPERUSER PASSWORD 'dbpass';"  
psql -c "CREATE DATABASE demosserver; " 
psql -c 'GRANT ALL PRIVILEGES ON DATABASE "demosserver" to postgreuser;'
import PGPASSWORD='dbpass'; psql -d demosserver -f /home/demos.sql
# pg_restore -d demosserver < "/home/demos.sql"
# pg_restore: error: input file appears to be a text format dump. Please use psql.
# Solution:
# psql -d demosserver -f /home/demos.sql