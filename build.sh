#!/bin/bash

# Build the project
echo "Building the project..."
python3.9 -m pip install asgiref
python3.9 -m pip install beautifulsoup4
python3.9 -m pip install certifi
python3.9 -m pip install chardet
python3.9 -m pip install dj-database-url
python3.9 -m pip install Django
python3.9 -m pip install django-heroku
python3.9 -m pip install gunicorn
python3.9 -m pip install idna
python3.9 -m pip install numpy
python3.9 -m pip install pandas
python3.9 -m pip install psycopg2
python3.9 -m pip install python-dateutil
python3.9 -m pip install pytz
python3.9 -m pip install requests
python3.9 -m pip install six
python3.9 -m pip install soupsieve
python3.9 -m pip install sqlparse
python3.9 -m pip install urllib3
python3.9 -m pip install whitenoise

echo "Make Migration..."
python3.9 manage.py makemigrations --noinput
python3.9 manage.py migrate --noinput

echo "Collect Static..."
python3.9 manage.py collectstatic --noinput --clear
