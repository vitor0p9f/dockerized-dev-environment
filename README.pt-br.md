<div align="center">
  <h1>Dockerized Dev Environment</h1>
</div>

<p align="justify">
    Este projeto visa construir um ambiente de desenvolvimento em um contêiner Docker. As ferramentas utilizadas no ambiente também são utilizadas no dia a dia do autor do projeto.
</p>

## Index

* [Ferramentas](#1)
* [Mostruário](#2)
* [Requisitos](#3)
* [Como utilizar](#4)
* [Atalhos](#5)

## <a id="1" />Ferramentas

O ambiente utiliza o `fish` como o shell padrão.

<details open>
  <summary>Git</summary>
  
  * GitHub CLI
  * Lazygit
</details>

<details open>
  <summary>asdf</summary>
  
  * Ruby
  * Rust
  * NodeJS
</details>

<details open>
  <summary>CLI</summary>
  
  * Bat (`cat` as an alias)
  * Exa (`ls` as an alias)
  * Atuin
  * Dust
  * Zellij
</details>

<details open>
  <summary>Neovim</summary>
  
  * Telescope
  * Noice
  * Neo-tree
  * Lualine
  * Barbar
  * Which Key
  * Lazygit
  * Catppuccin theme
  * Gitsigns
  * Lazy.nvim
  * Nvim-treesitter
</details>

## <a id="2" />Mostruário

<table>
  <tr>
    <th>Neovim</th>
    <th>Lazygit</th>
    <th>Exa</th>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/bbd5ac56-b1ae-4118-aae9-191fad028006">
        <img src="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/bbd5ac56-b1ae-4118-aae9-191fad028006" alt="Neovim screenshot"/>
      </a>
    </td>
    <td>
      <a href="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/9a3ff43d-b143-40a0-8384-d9b7454f33df">
        <img src="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/9a3ff43d-b143-40a0-8384-d9b7454f33df" alt="Lazygit screenshot"/>
      </a>
    </td>
    <td>
      <a href="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/bf522782-0919-401e-93b3-23350647a1b2">
        <img src="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/bf522782-0919-401e-93b3-23350647a1b2" alt="Exa screenshot"/>
      </a>
    </td>
  </tr>
  <tr>
    <th>Bat</th>
    <th>Dust</th>
    <th>Atuin</th>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/9e39330b-84ad-423c-b746-9ce788ab46ed">
        <img src="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/9e39330b-84ad-423c-b746-9ce788ab46ed" alt="Bat screenshot"/>
      </a>
    </td>
    <td>
      <a href="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/27714312-7ca4-4cd4-9245-c03740c66588">
        <img src="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/27714312-7ca4-4cd4-9245-c03740c66588" alt="Dust screenshot"/>
      </a>
    </td>
    <td>
      <a href="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/d4cbb934-ab10-4e76-8a97-4f7d099b601b">
        <img src="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/d4cbb934-ab10-4e76-8a97-4f7d099b601b" alt="Atuin screenshot"/>
      </a>
    </td>
  </tr>
  <tr>
    <th>Zellij</th>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/368f5ce5-34c3-48d2-862c-f40fab507bad">
        <img src="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/368f5ce5-34c3-48d2-862c-f40fab507bad" alt="Zellij screenshot"/>
      </a>
    </td>
  </tr>
</table>

## <a id="3" />Requisitos

* Docker
* Docker Compose
* Alguma Nerd Font

## <a id="4" />Como utilizar

1. Clone o repositório em sua máquina.
2. Adicione a função abaixo no arquivo de configuração de seu shell.

    <details>
      <summary>Fish</summary>
      
      ```fish
      function devE
      # Repository path
      
      set repo_path "$HOME/< Caminho onde o repositório foi clonado, sem '/' no final. Exemplo: Documents/GitHub >"
      
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
      
      		sudo docker-compose -f $repo_path/dockerized-dev-environment/docker-compose.yml --env-file $HOME/.dev-environment.env up -d --build --force-recreate
      
      		set_color yellow
      		printf "Running the container...\n"
      		set_color normal
      
      		sudo docker exec -it -w /home/ dockerized-dev-environment fish
      	case "stop"
      		set_color yellow
      		printf "Stopping the container...\n"
      		set_color normal
      
      		sudo docker-compose -f $repo_path/dockerized-dev-environment/docker-compose.yml stop
      
      		set_color yellow
      		printf "Stopping Docker daemon...\n"
      		set_color normal
      
      		sudo systemctl stop docker
      	case "remove"
      		set_color yellow
      		printf "Removing the container and the image...\n"
      		set_color normal
      
      		sudo docker-compose -f $repo_path/dockerized-dev-environment/docker-compose.yml down --rmi all
      
      		set_color yellow
      		printf "Stopping Docker daemon...\n"
      		set_color normal

      		sudo systemctl stop docker
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
      
      repo_path="$HOME/< Caminho onde o repositório foi clonado, sem '/' no final. Exemplo: Documents/GitHub >"
      
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
      
          sudo docker-compose -f $repo_path/dockerized-dev-environment/docker-compose.yml --env-file $HOME/.dev-environment.env up -d --build --force-recreate
      
          printf "${bright_yellow}Running the container...\n${normal}"
      
          sudo docker exec -it -w /home/ dockerized-dev-environment fish
        ;;
      
        "stop")
          printf "${bright_yellow}Stopping the container...\n${normal}"
      
          sudo docker-compose -f $repo_path/dockerized-dev-environment/docker-compose.yml stop
      
          printf "${bright_yellow}Stopping Docker daemon...\n${normal}"
      
          sudo systemctl stop docker
        ;;
      
        "remove")
          printf "${bright_yellow}Removing the container and the image...\n${normal}"
      
          sudo docker-compose -f $repo_path/dockerized-dev-environment/docker-compose.yml down --rmi all
      
          printf "${bright_yellow}Stopping Docker daemon...\n${normal}"
      
          sudo systemctl stop docker
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

4. Substitua `< Caminho onde o repositório foi clonado, sem '/' no final. Exemplo: Documents/GitHub >` pelo caminho do repositório.

5. Execute `devE build` dentro do diretório desejado para construir o ambiente. Este comando irá vincular o diretório do host com o diretório `/home/` dentro do contêiner.

   OBS: `devE build` precisa ser executado apenas uma vez, ou quando for necessário forçar a construção do contêiner. Caso contrário, utilize `devE run`.

6. Dentro do ambiente, execute `setup` para configurá-lo.

    OBS: `setup` precisa ser executado apenas uma vez, ou quando for necessário reconfigurar o ambiente.

## <a id="5" />Atalhos

Nesta seção, você poderá encontrar todos os atalhos customizados utilizados no Neovim. A tecla `leader` é a barra de espaço.

<br>

Buscar arquivos utilizando o telescope - <kbd>leader</kbd> + <kbd>f</kbd> + <kbd>f</kbd>

Buscar arquivos abertos recentemente usando o telescope - <kbd>leader</kbd> + <kbd>f</kbd> + <kbd>r</kbd>

Buscar uma palavra dentro de um arquivo usando o telescope - <kbd>leader</kbd> + <kbd>f</kbd> + <kbd>w</kbd>

Fixar a aba atual - <kbd>leader</kbd> + <kbd>t</kbd> + <kbd>f</kbd>

Fechar a aba atual - <kbd>leader</kbd> + <kbd>t</kbd> + <kbd>x</kbd>

Mover para a aba anterior - <kbd>leader</kbd> + <kbd>t</kbd> + <kbd>p</kbd>

Mover para a próxima aba - <kbd>leader</kbd> + <kbd>t</kbd> + <kbd>n</kbd>

Mostrar/Esconder a neo-tree - <kbd>leader</kbd> + <kbd>n</kbd> + <kbd>t</kbd>

Focar na neo-tree - <kbd>leader</kbd> + <kbd>n</kbd> + <kbd>f</kbd>

Resetar hunk sob o cursor - <kbd>leader</kbd> + <kbd>h</kbd> + <kbd>r</kbd>

Visualizar hunk sob o cursor - <kbd>leader</kbd> + <kbd>h</kbd> + <kbd>p</kbd>

Mostrar/Esconder o git blame - <kbd>leader</kbd> + <kbd>h</kbd> + <kbd>b</kbd>

Executar o Lazygit - <kbd>leader</kbd> + <kbd>l</kbd> + <kbd>r</kbd>
