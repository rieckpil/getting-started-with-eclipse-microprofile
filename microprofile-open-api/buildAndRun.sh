#!/bin/sh
mvn clean package && docker build -t de.rieckpil.blog/microprofile-open-api .
docker rm -f microprofile-config || true && docker run -d -p 9080:9080 -p 9443:9443 --name microprofile-config de.rieckpil.blog/microprofile-open-api && docker logs -f microprofile-open-api