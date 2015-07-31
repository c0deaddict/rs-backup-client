FROM debian:jessie
MAINTAINER Jos van Bakel <josvanbakel@gmail.com>

RUN apt-get update
RUN apt-get install -y git

RUN cd /tmp && \
    git clone https://github.com/c0deaddict/rs-backup-suite && \
    cd rs-backup-suite && \
    ./install.sh client

COPY run.sh /usr/src/app/run.sh
WORKDIR /usr/src/app/
RUN chmod +x run.sh

CMD ["/usr/src/app/run.sh"]
