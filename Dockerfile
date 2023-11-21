FROM dl.nvidia/cuda:11.1-cudnn8-devel-torch1.10.0

COPY models /home/yolov5/models
COPY utils /home/yolov5/utils
COPY data /home/yolov5/data
COPY val.py /home/yolov5
COPY train.py /home/yolov5

RUN pip3 install requests==2.23.0 psutil pandas==1.1.4 seaborn==0.11.0
WORKDIR /home/yolov5
ENTRYPOINT ["python3", "train.py"]