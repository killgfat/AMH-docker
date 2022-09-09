FROM debian:stable

USER root

RUN apt-get update && apt-get install -y wget gcc && \
    wget http://dl.amh.sh/amh.sh && bash amh.sh nginx-1.20,mysql-8.0,php-7.4 | tee amh.log
    
EXPOSE 80 443 8888 3306
