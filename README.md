# Docker Stage

Simple script to ease docker environment configuration. Based on [docker-machine](https://github.com/docker/machine) (required).

## Install

`curl -L https://raw.githubusercontent.com/sbusso/docker-stage/master/install.sh | sh`

## Commands

If you have a docker machine (dev), installation will automatically configure it with docker, `docker ps` is equivalent to `docker $(docker-machine config dev) ps`

When you install a new environment (staging) `docker-machine create -d ec2 staging`, reloading stage configuration `docker-stage reload` will provide staging environment commands. 

Switch to staging with `docker-stage staging`, any docker command will now use staging machine.




