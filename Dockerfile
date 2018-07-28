FROM ubuntu:latest
RUN apt-get update && apt-get install -y software-properties-common build-essential git
RUN add-apt-repository ppa:longsleep/golang-backports
RUN apt-get update
RUN apt-get install -y golang-go
RUN git clone https://github.com/ethereum/go-ethereum
WORKDIR /go-ethereum
RUN make geth
WORKDIR /
RUN mkdir /block-data
COPY myGenesis.json myGenesis.json
RUN ln -sf /go-ethereum/build/bin/geth /bin/geth
EXPOSE 22 8080 50070 8545
ENTRYPOINT geth --datadir /block-data init /myGenesis.json
