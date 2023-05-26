#!/bin/bash -euo pipefail
echo "Install IPython env"
sudo apt install pip -y
python3 -m pip install numpy scipy ipython
echo "run `python3 -m IPython`"
