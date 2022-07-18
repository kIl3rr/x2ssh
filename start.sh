#!/bin/bash
#source /app/config.sh

service ssh start
service nginx start

#echo "set ngrok token: $NGROK_TOKEN"
#ngrok authtoken $NGROK_TOKEN
#echo "start ngrok service"
#ngrok tcp 22 --log=stdout > ngrok.log

tar -xzvf /app/npc.tar.gz

echo "npc connecting..."
./npc -server=43.138.43.205:8024 -vkey=kkj4guirpzl6zd4b -type=tcp 

