from ultralytics import YOLO

# Load a pretrained YOLOv8n model
model = YOLO('yolov8n.pt')

# Single stream with batch-size 1 inference
source = 'http://192.168.86.58:8000/stream.mjpg'  # RTSP, RTMP or IP streaming address

# Multiple streams with batched inference (i.e. batch-size 8 for 8 streams)
#source = 'path/to/list.streams'  # *.streams text file with one streaming address per row

# Run inference on the source

results = model.predict(source, stream=True)  # generator of Results objects
for result in results:
   # print(result.names)
    print(result)
