FROM nvcr.io/nvidia/l4t-base:r32.4.3
RUN apt-get install -y vim
RUN apt-get update && apt-get -y install python3-pip
RUN pip3 install --upgrade setuptools
RUN pip3 install flask-swagger-ui
COPY requirements.txt app/requirements.txt
WORKDIR /app
