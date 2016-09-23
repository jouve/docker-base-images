#!/bin/sh

if [ ! -e /var/lib/postgresql/9.4/main/PG_VERSION ]; then
	pg_createcluster 9.4 main
fi

