@echo off
call mvn clean package
call docker build -t de.lengsfeld/anlz4sqree8 .
call docker rm -f anlz4sqree8
call docker run -d -p 8080:8080 -p 4848:4848 --name anlz4sqree8 de.lengsfeld/anlz4sqree8