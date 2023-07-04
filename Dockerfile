FROM httpd

RUN apt-get update && apt-get install -y build-essential libssl-dev git zlib1g-dev curl sysstat procps net-tools iproute2 vim tcpdump
RUN cd $HOME && git clone https://github.com/giltene/wrk2.git \
    && cd wrk2 \
    && make \
    && cp wrk /usr/local/bin
