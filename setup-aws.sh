#!/bin/bash
PIP_VERSION=`pip3 --version`
echo $PIP_VERSION
if [ -z "$PIP_VERSION" ]
then
    PYTHON3_VERSION=`python3 --version`
    if [ -z "$PYTHON3_VERSION" ]
    then
        echo "You need to download Python3 to continue.."
        echo "https://www.python.org/downloads/"
        exit 1
    echo "You need to download Pip3 package for python to continue.."
    echo "https://pip.pypa.io/en/stable/installing/"
    exit 1
    fi
fi
pip3 install awscli --upgrade --user
aws configure

echo `aws --version`      
echo "setup complete."