#!/bin/bash

# Get the absolute path of the current file
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Run the docker command with the absolute path of the current file
docker run -d --name mysql8 -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -v "${DIR}/data:/var/lib/mysql" --platform linux/amd64 mysql:8.0.27
