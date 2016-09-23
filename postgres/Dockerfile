FROM {{ user }}/postgres-base:0.1

ADD main.tar.gz /etc/postgresql/

CMD [ "pg_ctlcluster", "--foreground", "9.4", "main", "start" ]

