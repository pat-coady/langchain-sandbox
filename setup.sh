#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install -y python3-venv
echo "source langchain-sandbox/venv/bin/activate" >> ~/.bashrc

ENV_VARS=(
    "export JUPYTER_CONFIG_DIR='.'"
    "export LANGCHAIN_TRACING_V2='true'"
)

add_env_vars_to_bashrc() {
    for var in "${ENV_VARS[@]}"; do
        # Check if the variable is already in .bashrc
        if ! grep -q "$var" ~/.bashrc; then
            echo "$var" >> ~/.bashrc
            echo "Added: $var"
        else
            echo "Already present: $var"
        fi
    done
}

add_env_vars_to_bashrc
source ~/.bashrc

pip install -r requirements.txt

