#!/bin/sh
mvn clean package && docker build -t de.lengsfeld/anlz4sqree8 .
docker rm -f anlz4sqree8 || true && docker run -d -p 8080:8080 -p 4848:4848 --name anlz4sqree8 de.lengsfeld/anlz4sqree8