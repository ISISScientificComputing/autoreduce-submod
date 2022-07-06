# use this script with `source ./install-in-pip.sh` to make sure the Python from your virtualenv is used!

pip install -e autoreduce-utils
pip install -e autoreduce-db
pip install -e autoreduce-scripts
pip install -e autoreduce
pip install -e autoreduce-rest-api
pip install -e autoreduce-frontend
pip install -r autoreduce-frontend/requirements.txt

pip install -r autoreduce-actions/requirements.txt
