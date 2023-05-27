#!/bin/bash

# Build the project
echo "Building the project..."
python3.9 -m pip install -r requirements.txt
yum install sqlite-devel
./configure --enable-loadable-sqlite-extensions && make && sudo make install
echo "Make Migration..."
python3.9 manage.py makemigrations --noinput
python3.9 manage.py migrate --noinput

echo "Collect Static..."
python3.9 manage.py collectstatic --noinput --clear
