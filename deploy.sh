#!/bin/bash
mkdir shu-online-judge && cd shu-online-judge
git clone git@github.com:shuoj/shu-online-judge-fe.git
docker swarm init
docker stack deploy -c single-node-docker-compose.yml shuoj