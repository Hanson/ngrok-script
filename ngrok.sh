#!/usr/bin/env bash

if [ "$(uname)" == "Darwin" ]
then
	./ngrok-mac -config=./ngrok.cfg -subdomain  $1 80
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]
then
	./ngrok -config=./ngrok.cfg -subdomain  $1 80
fi