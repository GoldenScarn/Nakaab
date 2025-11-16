sudo apt install python3.10-venv -y
sudo apt install python3-pip -y
sudo apt install git-all -y
sudo apt install ffmpeg -y
python3.10 -m venv myenv
source myenv/bin/activate
pip uninstall -y onnxruntime onnxruntime-gpu
pip install onnxruntime-gpu==1.15.1
git clone https://github.com/GoldenScarn/AISwapper.git
cd AISwapper
pip install -r requirements.txt
export LD_LIBRARY_PATH=/workspace/myenv/lib/python3.10/site-packages/nvidia/cudnn/lib/:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/workspace/myenv/lib/python3.10/site-packages/nvidia/cuda_nvrtc/lib/:$LD_LIBRARY_PATH
pip install --force-reinstall pydantic==2.10.6
pip install --upgrade gradio==5.13.0
pip install onnxruntime-gpu==1.15.1
python run.py
