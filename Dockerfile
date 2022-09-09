FROM Debian:stable

USER ROOT

RUN apt-get update && apt-get install -y wget \
    wget http://dl.amh.sh/amh.sh && bash amh.sh | tee amh.log \
    
EXPOSE 80 443 8888 3306
