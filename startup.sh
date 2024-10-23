#!/bin/sh
source /app/.venv/bin/activate
# gunicorn -b :5000 --access-logfile - --error-logfile - wsgi:app
/app/.venv/bin/gunicorn --reload --bind 0.0.0.0:8000 --workers 3 --threads 8 --timeout 600 /app/demos.wsgi:application