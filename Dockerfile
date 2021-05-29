FROM ubuntu:16.04
RUN apt-get -y update && apt-get -y install apache2 && rm -rf /var/lib/apt/lists/*
CMD apachectl -DFOREGROUND
