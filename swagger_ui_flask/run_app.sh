echo $PATH
docker run --privileged -itd --network host -v  /home/amir/homeSystem/swagger_ui_flask/shared:/app/shared base-image:latest bash