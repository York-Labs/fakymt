FROM ubuntu:latest
ADD jh.zip
RUN apt update && apt upgrade
RUN apt install unzip -y
RUN unzip jh.zip
ADD start.sh
RUN chmod +x start.sh

CMD ["bash","start.sh"]
