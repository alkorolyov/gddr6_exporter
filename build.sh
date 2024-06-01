#!/bin/bash
sudo apt install libpci-dev -y

make
g++ -std=c++11 -o metrics_exporter metrics_exporter.cpp -lpthread
docker build -t gddr6-metrics-exporter .
docker tag gddr6-metrics-exporter alkorolyov/gddr6-metrics-exporter:latest
docker push alkorolyov/gddr6-metrics-exporter:latest

