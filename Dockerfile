FROM ubuntu:16.04
RUN apt-get update && apt-get install -yq --no-install-recommends libssl-dev \
  libjansson-dev libcurl4-openssl-dev libsqlite3-dev sendemail make gcc g++ && \
  rm -rf /var/lib/apt/lists/*
WORKDIR /blackbird
ADD src src
ADD extern extern
ADD curl-ca-bundle.crt stop_after_notrade_ Makefile ./
RUN make
