FROM {{ user }}/debian:16.09.22

RUN apt update && \
    apt install -y nginx && \
    rm -rf /var/{lib,log,cache}/apt

ADD nginx.tar.gz /etc/nginx

CMD [ "nginx" ]

