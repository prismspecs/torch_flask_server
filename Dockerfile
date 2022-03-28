ARG BASE_IMAGE=pytorch/pytorch:1.10.0-cuda11.3-cudnn8-devel
FROM $BASE_IMAGE

RUN pip install scipy==1.3.3
RUN pip install runway-python
# for generating videos etc from server.py
RUN pip install moviepy
RUN pip install opensimplex
RUN apt-get update && apt-get install -y ffmpeg
# for torch stuff
RUN pip install torch_utils
RUN pip install ninja

# make all files created belong to me instead of docker root
RUN usermod -u 1000 www-data
RUN usermod -G staff www-data

# networking
EXPOSE 9000

# autorun script
#CMD ["python3", "runway_model.py"]
