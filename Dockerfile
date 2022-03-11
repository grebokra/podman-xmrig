FROM ubuntu:latest

RUN apt update -y && apt install -y kmod msr-tools wget git libcurl4-openssl-dev build-essential libjansson-dev autotools-dev automake

RUN wget https://github.com/xmrig/xmrig/releases/download/v6.16.4/xmrig-6.16.4-focal-x64.tar.gz

RUN tar xvf xmrig-6.16.4-focal-x64.tar.gz

WORKDIR xmrig-6.16.4 

ENTRYPOINT ["/xmrig-6.16.4/xmrig"]

CMD ["-o", "pool.minexmr.com:4444", "-u", "<wallet-addr>", "-t", "56", "--verbose", "--cpu-priority", "5"]

