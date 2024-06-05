<div align="center">
  <h1>Dockerized Dev Environment</h1>
</div>

<p align="justify">
    This project aims to build a development environment inside a Docker container. The environment's tools are used daily by the project's author.
</p>

## Tools

The environment use `fish` as default shell.

<details open>
  <summary>Git</summary>
  
  * GitHub CLI
</details>

<details open>
  <summary>asdf</summary>
  
  * Ruby
  * Rust
  * NodeJS
</details>

* Neovim

## Showcase

<table>
  <tr>
    <th>Neovim</th>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/1e21933c-5030-436a-88d2-741bb3734a5a">
        <img src="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/1e21933c-5030-436a-88d2-741bb3734a5a" alt="Neovim screenshot"/>
      </a>
    </td>
  </tr>
</table>

## Requirements

* Docker
* Docker Compose

## How to use

1. Clone this repository on your machine.
2. Add the function below to your shell's config file.

    <details>
      <summary>Fish</summary>
      
      ```fish
      function devE
      # Repository path
      
      set repo_path "$HOME/< Repository path, without / >"
      
      # Generating env file
      
      rm $HOME/.dev-environment.env >> /dev/null
      
      touch $HOME/.dev-environment.env
      
      ## Adding the current working directory
      
      echo "PWD = $(pwd)" >> $HOME/.dev-environment.env
      
      ## Adding host's home path
      
      echo "HOST_HOME_DIR = $HOME" >> $HOME/.dev-environment.env
      
      # Generating .gitconfig file
      
      set git_username (git config user.name)
      set git_email (git config user.email)
      
      set content "
      	[user]
      		name = $git_username
      		email = $git_email
      
      	[safe]
      		directory = /home
      
      	[core]
      		editor = nvim
      "
      
      rm $repo_path/dockerized-dev-environment/.gitconfig >> /dev/null
      
      touch $repo_path/dockerized-dev-environment/.gitconfig
      
      echo $content >> $repo_path/dockerized-dev-environment/.gitconfig
      
      # Commands
      
      switch $argv[1]
      	case "run"
      		set_color yellow
      		printf "Starting Docker daemon...\n"
      		set_color normal
      
      		sudo systemctl start docker
      
      		set_color yellow
      		printf "Running the container...\n"
      		set_color normal
      
      		sudo docker-compose -f $repo_path/dockerized-dev-environment/docker-compose.yml --env-file $HOME/.dev-environment.env up -d
      
      		sudo docker exec -it -w /home/ dockerized-dev-environment fish
      	case "build"
      		set_color yellow
      		printf "Starting Docker daemon...\n"
      		set_color normal
      
      		sudo systemctl start docker
      
      		set_color yellow
      		printf "Building the container...\n"
      		set_color normal
      
      		sudo docker-compose -f $repo_path/dockerized-dev-environment/docker-compose.yml --env-file $HOME/.dev-environment.env up -d --build
      
      		set_color yellow
      		printf "Running the container...\n"
      		set_color normal
      
      		sudo docker exec -it -w /home/ dockerized-dev-environment fish
      	case "stop"
      		set_color yellow
      		printf "Stopping the container...\n"
      		set_color normal
      
      		sudo docker stop dockerized-dev-environment
      
      		set_color yellow
      		printf "Stopping Docker daemon...\n"
      		set_color normal
      
      		sudo systemctl stop docker
      	case "remove"
      		set_color yellow
      		printf "Stopping the container...\n"
      		set_color normal
      
      		sudo docker stop dockerized-dev-environment
      
      		set_color yellow
      		printf "Removing the container...\n"
      		set_color normal
      
      		sudo docker rm dockerized-dev-environment
      
      		set_color yellow
      		printf "Removing the image...\n"
      		set_color normal
      
      		sudo docker rmi dockerized-dev-environment
      	case "*"
      		printf "Usage:\tdevE COMMAND\n\n"
      
      		printf "A development environment inside a Docker container\n\n"
      
      		printf "Commands:\n"
      
      		printf "  run\t\tRun the environment and bind the current working directory with container's home directory\n"
      
      		printf "  build\t\tForce the build the container\n"
      
      		printf "  stop\t\tStop the container and the Docker's daemon\n"
      
      		printf "  remove\tRemove the container, the image and stops the Docker's daemon\n"
          end
      end
      ```
    </details>

    <details>
      <summary>Bash</summary>
      
      ```bash
      devE(){
      # Colors
      
      bright_yellow="\u001b[33;1m"
      normal="\u001b[0m"
      
      # Repository path
      
      repo_path="$HOME/< Repository path, without / >"
      
      # Generating env file
      
      rm $HOME/.dev-environment.env >> /dev/null
      
      touch $HOME/.dev-environment.env
      
      ## Adding the current working directory
      
      echo "PWD = $(pwd)" >> $HOME/.dev-environment.env
      
      ## Adding host's home path
      
      echo "HOST_HOME_DIR = $HOME" >> $HOME/.dev-environment.env
      
      # Generating .gitconfig file
      
      git_username=$(git config user.name)
      git_email=$(git config user.name)
      
      content="
      	[user]
      		name = ${git_username}
      		email = ${git_email}
      
      	[safe]
      		directory = /home
      
      	[core]
      		editor = nvim
      "
      
      rm $repo_path/dockerized-dev-environment/.gitconfig >> /dev/null
      
      touch $repo_path/dockerized-dev-environment/.gitconfig
      
      echo $content >> $repo_path/dockerized-dev-environment/.gitconfig
      
      # Commands
      
      case "$1" in
        "run")
          printf "${bright_yellow}Starting Docker daemon...\n${normal}"
      
          sudo systemctl start docker
      
          printf "${bright_yellow}Running the container...\n${normal}"
      
          sudo docker-compose -f $repo_path/dockerized-dev-environment/docker-compose.yml --env-file $HOME/.dev-environment.env up -d
      
          sudo docker exec -it -w /home/ dockerized-dev-environment fish
        ;;
      
        "build")
          printf "${bright_yellow}Starting Docker daemon...\n${normal}"
      
          sudo systemctl start docker
      
          printf "${bright_yellow}Building the container...\n${normal}"
      
          sudo docker-compose -f $repo_path/dockerized-dev-environment/docker-compose.yml --env-file $HOME/.dev-environment.env up -d --build
      
          printf "${bright_yellow}Running the container...\n${normal}"
      
          sudo docker exec -it -w /home/ dockerized-dev-environment fish
        ;;
      
        "stop")
          printf "${bright_yellow}Stopping the container...\n${normal}"
      
          sudo docker stop dockerized-dev-environment
      
          printf "${bright_yellow}Stopping Docker daemon...\n${normal}"
      
          sudo systemctl stop docker
        ;;
      
        "remove")
          printf "${bright_yellow}Stopping the container...\n${normal}"
      
          sudo docker stop dockerized-dev-environment
      
          printf "${bright_yellow}Removing the container...\n${normal}"
      
          sudo docker rm dockerized-dev-environment
      
          printf "${bright_yellow}Removing the image...\n${normal}"
      
          sudo docker rmi dockerized-dev-environment
        ;;
      
        *)
          printf "Usage:\tdevE COMMAND\n\n"
      
          printf "A development environment inside a Docker container\n\n"
      
          printf "Commands:\n"
      
          printf "  run\t\tRun the environment and bind the current working directory with container's home directory\n"
      
          printf "  build\t\tForce the build the container\n"
      
          printf "  stop\t\tStop the container and the Docker's daemon\n"
      
          printf "  remove\tRemove the container, the image and stops the Docker's daemon\n"
        ;;
      esac
      }
      ```
    </details>

    OBS: If you don't have a git username and email configured on your git global config, you must fill in the fields on `.gitconfig` file.

    OBS: Close the terminal to apply the modifies on the shell's configuration file.

3. Replace `< Repository path, without / >` with the repository's path.

4. Run `devE build` inside the desired directory to build the environment. This command will bind the host directory with the `/home/` directory inside the container.

   OBS: `devE build` only needs to be executed once, or when it is necessary to force the construction of the container. Otherwise, use `devE run`.

6. Run `setup` inside the environment to configure it.

    OBS: `setup` only needs to be executed once, or when it is necessary to reconfigure the environment.
