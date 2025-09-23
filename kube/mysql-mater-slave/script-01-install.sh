#!/bin/bash

kubectl  create namespace mysql-test

kubectl apply -f mysql-master-slave.yaml