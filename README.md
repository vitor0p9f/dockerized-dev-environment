<div align = "center">
  <p>This README is also available in the following languages:</p>
  <br/>
  
  <a href = "https://github.com/vitor0p9f/dockerized-dev-environment/blob/release/0.3.1/README.pt-br.md">
    <img src="https://img.shields.io/badge/Language-Portuguese Br-blue"/>
  </a>
</div>

<div align="center">
  <h1>Dockerized Dev Environment</h1>
</div>

<p align="justify">
    This project aims to build a development environment inside a Docker container. The environment's tools are used daily by the project's author.
</p>

## Index

* [Tools](#1)
* [Showcase](#2)
* [Requirements](#3)
* [How to use](#4)
* [Shortcuts](#5)

## <a id="1" />Tools

The environment use `fish` as default shell.

<details open>
  <summary>Git</summary>
  
  * GitHub CLI
  * Lazygit
</details>

<details open>
  <summary>asdf</summary>
  
  * Ruby
  * Rust
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

* NodeJS
* NPM

## <a id="2" />Showcase

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

## <a id="3" />Requirements

* Docker
* Docker Compose
* Some Nerd Font

## <a id="4" />How to use

1. Clone this repository on your machine.
2. Add the function below to your shell's config file.

    <details>
      <summary>Fish</summary>
      
      ```fish
      function devE
      # Repository path
      
      set repo_path "$HOME/< The path where the repository was cloned, without '/' at the end. Example: Documents/GitHub >"
      
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
      
      repo_path="$HOME/< The path where the repository was cloned, without '/' at the end. Example: Documents/GitHub >"
      
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

    OBS: If you don't have a git username and email configured on your git global config, you must fill in the fields on `.gitconfig` file.

    OBS: Close the terminal to apply the modifies on the shell's configuration file.

4. Replace `< The path where the repository was cloned, without '/' at the end. Example: Documents/GitHub >` with the repository's path.

5. Run `devE build` inside the desired directory to build the environment. This command will bind the host directory with the `/home/` directory inside the container.

   OBS: `devE build` only needs to be executed once, or when it is necessary to force the construction of the container. Otherwise, use `devE run`.

6. Run `setup` inside the environment to configure it.

    OBS: `setup` only needs to be executed once, or when it is necessary to reconfigure the environment.

## <a id="5" />Shortcuts

In this section, you can find all the custom shortcuts used in Neovim. The `leader` key is the spacebar.

<br>

Find file using telescope - <kbd>leader</kbd> + <kbd>f</kbd> + <kbd>f</kbd>

Find recent files usign telescope - <kbd>leader</kbd> + <kbd>f</kbd> + <kbd>r</kbd>

Find a word inside a file using telescope - <kbd>leader</kbd> + <kbd>f</kbd> + <kbd>w</kbd>

Pin current tab - <kbd>leader</kbd> + <kbd>t</kbd> + <kbd>f</kbd>

Close current tab - <kbd>leader</kbd> + <kbd>t</kbd> + <kbd>x</kbd>

Move to the previous tab - <kbd>leader</kbd> + <kbd>t</kbd> + <kbd>p</kbd>

Move to the next tab - <kbd>leader</kbd> + <kbd>t</kbd> + <kbd>n</kbd>

Toggle neo-tree - <kbd>leader</kbd> + <kbd>n</kbd> + <kbd>t</kbd>

Focus on neo-tree - <kbd>leader</kbd> + <kbd>n</kbd> + <kbd>f</kbd>

Reset hunk under the cursor - <kbd>leader</kbd> + <kbd>h</kbd> + <kbd>r</kbd>

Preview hunk under the cursor - <kbd>leader</kbd> + <kbd>h</kbd> + <kbd>p</kbd>

Toggle git blame - <kbd>leader</kbd> + <kbd>h</kbd> + <kbd>b</kbd>

Run Lazygit - <kbd>leader</kbd> + <kbd>l</kbd> + <kbd>r</kbd>
