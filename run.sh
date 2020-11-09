#!/bin/bash

docker run --rm -ti \
	-e PROXY_HOSTNAME=$1 \
	-v $PWD/httpd.conf:/usr/local/apache2/conf/httpd.conf \
	-v $PWD/cert.key:/etc/ssl/private/cert.key \
	-v $PWD/cert.pem:/etc/ssl/certs/cert.pem \
	-p 8080:80 \
	-p 8443:443 \
	--add-host $1:$2 \
	httpd:alpine
