#/usr/local/Cellar/bash/5.0.11/bin/bash
set -x
echo ${BASH_VERSION}

python -m venv py37  
source py37/bin/activate &&
which python3 &&
pip install --upgrade pip && 
pip install -r requirements.txt &&
pip list

#generate config
#telegram-send --config tlgm.conf --configure
# test
telegram-send --config tlgm.conf "tteesstt"