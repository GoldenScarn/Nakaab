#!/bin/bash

# Update package list and install necessary packages
sudo apt update

# Install Python 3.10 and venv
sudo apt install python3.10-venv -y

# Create and activate a virtual environment
python3.10 -m venv myenv
source myenv/bin/activate

# Install pip and other required software
sudo apt install python3-pip -y
sudo apt install git-all -y
sudo apt install ffmpeg -y

# Uninstall and install specific versions of ONNX Runtime
pip uninstall -y onnxruntime onnxruntime-gpu
pip install onnxruntime-gpu==1.15.1

# Clone the repository and install dependencies
# git clone https://github.com/GoldenScarn/AISwapper.git
# cd AISwapper/

# Install required Python packages from requirements.txt
pip install -r requirements.txt

# Run the application
python run.py
