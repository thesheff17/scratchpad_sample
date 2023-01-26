#!/bin/bash

python3 -m venv /home/vscode/develop
source /home/vscode/develop/bin/activate && pip install django poetry psycopg2
