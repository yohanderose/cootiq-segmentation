FROM nvidia/cuda:10.1-base

# COPY requirements.txt ./
RUN apt update && apt install git build-essential python3-dev python3-pip -y && \
    pip3 install numpy opencv-python cython pyyaml jupyterlab && \
    pip3 install "git+https://github.com/philferriere/cocoapi.git#egg=pycocotools&subdirectory=PythonAPI" && \
    pip3 install torch==1.5.0+cpu torchvision==0.6.0+cpu -f https://download.pytorch.org/whl/torch_stable.html && \
    python3 -m pip install detectron2 -f https://dl.fbaipublicfiles.com/detectron2/wheels/cpu/index.html

# CMD [ "python", "./your-daemon-or-script.py" ]