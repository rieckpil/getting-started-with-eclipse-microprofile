#!/bin/sh
mvn clean package && docker build -t de.rieckpil.udemy/microprofile-health .
docker rm -f microprofile-health || true && docker run -d -p 9080:9080 --name microprofile-health de.rieckpil.udemy/microprofile-health