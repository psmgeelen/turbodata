#! /bin/bash

echo "Install Ubuntu dependencies"
sudo apt install libpython3.9-dev gcc g++ # replace libpython3-dev with libpython3.9-dev when chaning version ubuntu dependencies for KDEpy, note that python version is hardcoded here!

# This section grabs the name from the yml file in order to be able to activate the environment
db=$(grep 'name:' requirements.yml | tail -n1 | cut -d ' ' -f 2); db=${db//*database: /}
echo "--- Version of requirements.yml is $db ---"
source ~/anaconda3/etc/profile.d/conda.sh

# This section activates the virtual environment in Conda is possible. If this is not possible, it will build the environment accordingly. 
{
  echo "--- Activate virtual environment ---"
  conda activate $db
} || {
  echo "--- Create new virtual environment ---"
  conda env create -f requirements.yml
  echo "--- Activate virtual environment ---"
  conda activate $db
  echo "--- Environment Activated ---"
}

# The actual test script, this can include the deployment of docker containers or the execution of a python script.
echo "--- Generate Data with problem values ---"
python GenerateData.py
echo "--- Run Script ---"
python testandconfigure.py