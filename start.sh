#!/bin/sh

#apk add vim curl 
pip install -r requirements.txt && 

python -m flask run --host=0.0.0.0