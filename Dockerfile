FROM ubuntu:latest
RUN apt-get update && apt-get upgrade -y
RUN apt-get install telegram-cli python3 curl wget nano rclone -y
RUN apt-get install python3-pip -y
RUN pip install telethon
