@echo off
call mvn clean package
call docker build -t de.rieckpil.udemy/microprofile-health .
call docker rm -f microprofile-health
call docker run -d -p 8080:8080 -p 4848:4848 --name microprofile-health de.rieckpil.udemy/microprofile-health