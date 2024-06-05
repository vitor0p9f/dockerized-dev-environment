<div align="center">
  <h1>Dockerized Dev Environment</h1>
</div>

<p align="justify">
    Este projeto visa construir um ambiente de desenvolvimento em um contêiner Docker. As ferramentas utilizadas no ambiente também são utilizadas no dia a dia do autor do projeto.
</p>

## Ferramentas

O ambiente utiliza o `fish` como o shell padrão.

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

## Mostruário

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

## Requisitos

* Docker
* Docker Compose

## Como utilizar

1. Clone o repositório em sua máquina.
2. Adicione a função abaixo no arquivo de configuração de seu shell.

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

    OBS: Se não houver username e email configurados globalmente no git, você deve preencher esses campos no arquivo `.gitconfig`.

    OBS: Feche o terminal para aplicar as modificações feitas no arquivo de configuração do shell.

3. Substitua `< Repository path, without / >` pelo caminho do repositório.

4. Execute `devE build` dentro do diretório desejado para construir o ambiente. Este comando irá vincular o diretório do host com o diretório `/home/` dentro do contêiner.

   OBS: `devE build` precisa ser executado apenas uma vez, ou quando for necessário forçar a construção do contêiner. Caso contrário, utilize `devE run`.

6. Dentro do ambiente, execute `setup` para configurá-lo.

    OBS: `setup` precisa ser executado apenas uma vez, ou quando for necessário reconfigurar o ambiente.
