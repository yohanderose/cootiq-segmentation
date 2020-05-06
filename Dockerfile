FROM python:3.6

# COPY requirements.txt ./
RUN pip install numpy opencv-python cython pyyaml jupyterlab && \
    pip install "git+https://github.com/philferriere/cocoapi.git#egg=pycocotools&subdirectory=PythonAPI" && \
    pip install torch==1.5.0+cpu torchvision==0.6.0+cpu -f https://download.pytorch.org/whl/torch_stable.html && \
    python -m pip install detectron2 -f https://dl.fbaipublicfiles.com/detectron2/wheels/cpu/index.html

# CMD [ "python", "./your-daemon-or-script.py" ]