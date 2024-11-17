#!/bin/sh

repository_directory=~/Documents/Programming/dockerized-dev-environment

if [ "$#" -eq 0 ]; then
  if [ ! -e $repository_directory/.env ]; then
    env_file_path=$repository_directory/.env

    touch $env_file_path

    echo "USER_ID=$(id -u)" >> $env_file_path
    echo "USER_NAME=$(id -un)" >> $env_file_path
    echo "XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR" >> $env_file_path
    echo "DISPLAY=$DISPLAY" >> $env_file_path
    echo "XAUTHORITY=$XAUTHORITY" >> $env_file_path
  fi

  sudo systemctl start docker

  sudo docker compose --file $repository_directory/compose.yml up -d

  sudo docker compose --file $repository_directory/compose.yml exec -it dockerized-dev-environment fish
else
  case $1 in
    "build")
      sudo systemctl start docker

      sudo docker-compose --file $repository_directory/compose.yml build --no-cache

      sudo docker-compose --file $repository_directory/compose.yml up -d

      sudo docker compose --file $repository_directory/compose.yml exec -it dockerized-dev-environment fish
    ;;

    "stop")
      sudo systemctl start docker

      sudo docker-compose --file $repository_directory/compose.yml stop
    ;;

    "remove")
      sudo systemctl start docker

      sudo docker-compose --file $repository_directory/compose.yml down -v

      sudo docker rmi dockerized-dev-environment-image
    ;;
  esac
fi
