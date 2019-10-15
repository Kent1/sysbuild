#!/usr/bin/env sh
docker run --name sysassets --rm -d sysassets:latest
docker run --name sysbuild --rm -d sysbuild:latest
docker run --name reverse_proxy -d -p 80:80 -v $PWD/nginx.conf:/etc/nginx/nginx.conf --link sysbuild --link sysassets --rm nginx
