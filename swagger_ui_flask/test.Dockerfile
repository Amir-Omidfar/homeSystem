FROM nvcr.io/nvidia/l4t-base:r32.4.3
WORKDIR /app
COPY requirements.txt app/requirements.txt
