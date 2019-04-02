#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
cd ..

if [[ $(python3.6 --version) ]];then
    pbin=$(which python3.6)
elif [[ $(python3 --version) ]];then
    pbin=$(which python3)
else
    pbin=$(which python)
fi

if [[ ! -d venv ]]; then
    $pbin -m venv venv
fi

source venv/bin/activate

python -m pip install -r scripts/requirements.txt

python -m jupyter notebook
