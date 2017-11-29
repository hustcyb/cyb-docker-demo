#!/bin/bash

mkdir certs
openssl req -newkey rsa:2048 -nodes -sha256 -keyout certs/localhost.key -x509 -days 365 -out certs/localhost.crt