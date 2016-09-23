FROM {{ user }}/debian:16.09.22

RUN apt update && \
    apt install -y postgresql postgresql-contrib && \
    rm -rf /var/{lib,log,cache}/apt && \
    pg_dropcluster 9.4 main

