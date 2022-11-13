#!/bin/bash

DOCKER_COMPOSE_FILE=docker-compose-v2.yml

SCRIPT_PATH=$(cd `dirname $0`; pwd)
docker compose -f ${SCRIPT_PATH}/${DOCKER_COMPOSE_FILE} down
