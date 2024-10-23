#!/bin/bash

if [ -d ".venv" ] 
then
    echo ">>> Python virtual environment exists." 
else
    python3 -m venv .venv
fi

source .venv/bin/activate
echo ">>> Activated Python virtual environment"

echo "<<<<<<<<<<<<< Starting Python Package Installation >>>>>>>>>>>>>>"
pip3 install -r requirements.txt
echo ">>> Completed Python Package Installation!!!! <<<"

if [ -d "logs" ] 
then
    echo ">>> Log folder exists." 
else
    mkdir logs
    touch logs/error.log logs/access.log
    echo ">>> Created Log folders." 
fi

chmod -R 777 logs