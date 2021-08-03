#!/bin/bash

git clone https://github.com/ISISScientificComputing/autoreduce-utils
git clone https://github.com/ISISScientificComputing/autoreduce-frontend
git clone https://github.com/ISISScientificComputing/autoreduce-db
git clone https://github.com/ISISScientificComputing/autoreduce-containers
git clone https://github.com/ISISScientificComputing/autoreduce-actions
git clone https://github.com/ISISScientificComputing/autoreduce-scripts
git clone https://github.com/ISISScientificComputing/ansible
git clone https://github.com/ISISScientificComputing/autoreduce
git clone https://github.com/ISISScientificComputing/autoreduce-rest-api
git clone https://github.com/ISISScientificComputing/autoreduce-notebooks

# Setup pre-commit hooks for cloned repositories
pip install -r requirements.txt
for d in */; do
  if [[ $d != *"venv"* ]]; then # skip setting up pre-commit hook in *venv* directory
    cp -v .pre-commit-config.yaml "$d" && (cd "$d" && pre-commit install)
  fi
done

