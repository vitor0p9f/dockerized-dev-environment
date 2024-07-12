<div align = "center">
  <p>This README is also available in the following languages:</p>
  <br/>
  
  <a href = "https://github.com/vitor0p9f/dockerized-dev-environment/blob/release/0.4.0/README.pt-br.md">
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

- [Demonstration](#1)
- [Tools](#2)
- [Requirements](#3)
- [How to use](#4)
- [Commands](#5)
- [Shortcuts](#6)
- [Remarks](#7)

## <a id="1" />Demonstration

https://github.com/user-attachments/assets/67943255-6d90-4618-a1fe-4a23e45c2f75

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
    <th>Autocomplete</th>
    <th>Code actions</th>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/368f5ce5-34c3-48d2-862c-f40fab507bad">
        <img src="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/368f5ce5-34c3-48d2-862c-f40fab507bad" alt="Zellij screenshot"/>
      </a>
    </td>
    <td>
      <a href="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/6f5d8212-b6ea-48bd-bb40-19f1a0951dc8">
        <img src="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/6f5d8212-b6ea-48bd-bb40-19f1a0951dc8" alt="Autocomplete in Neovim screenshot"/>
      </a>
    </td>
    <td>
      <a href="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/a31aae42-fe21-4e97-b510-1a6f8562181f">
        <img src="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/a31aae42-fe21-4e97-b510-1a6f8562181f" alt="Code actions in Neovim screenshot"/>
      </a>
    </td>
  </tr>
  <tr>
    <th>LSP</th>
  </tr>
  <tr>
     <td>
      <a href="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/a3784757-5cd5-46ee-8a39-bb31eea4d026">
        <img src="https://github.com/vitor0p9f/dockerized-dev-environment/assets/153991573/a3784757-5cd5-46ee-8a39-bb31eea4d026" alt="LSP in Neovim screenshot"/>
      </a>
    </td>
  </tr>
</table>

## <a id="2" />Tools

The environment use `fish` as default shell.

- NodeJS
- NPM

<details open>
  <summary>Git</summary>
  
  - [GitHub CLI](https://cli.github.com/)
  - [Lazygit](https://github.com/jesseduffield/lazygit)
</details>

<details open>
  <summary>asdf</summary>
  
  - Elixir
  - Erlang
</details>

<details open>
  <summary>CLI</summary>
  
  - [Bat](https://github.com/sharkdp/bat) (`cat` as an alias)
  - [Exa](https://github.com/ogham/exa) (`ls` as an alias)
  - [Atuin](https://github.com/atuinsh/atuin)
  - [Dust](https://github.com/bootandy/dust)
  - [Zellij](https://github.com/zellij-org/zellij)
</details>

<details open>
  <summary>Neovim</summary>
  
  - [Telescope](https://github.com/nvim-telescope/telescope.nvim)
  - [Noice](https://github.com/folke/noice.nvim)
  - [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
  - [Lualine](https://github.com/nvim-lualine/lualine.nvim)
  - [Barbar](https://github.com/romgrk/barbar.nvim)
  - [Which Key](https://github.com/folke/which-key.nvim)
  - [Lazygit](https://github.com/kdheepak/lazygit.nvim)
  - [Catppuccin theme](https://github.com/catppuccin/nvim)
  - [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)
  - [Lazy.nvim](https://github.com/folke/lazy.nvim)
  - [Nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
  - [Trouble](https://github.com/folke/trouble.nvim)
  - [Mason](https://github.com/williamboman/mason.nvim)
  - [Nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
  - [None-ls](https://github.com/nvimtools/none-ls.nvim)
  - [Mason-null-ls](https://github.com/jay-babu/mason-null-ls.nvim)
  - [Mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim)
  - [Luasnip](https://github.com/L3MON4D3/LuaSnip)
  - [Telescope-ui-select](https://github.com/nvim-telescope/telescope-ui-select.nvim)
  - [Cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
  - [Nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
  - [Cmp-luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
  - [Multicursors](https://github.com/smoka7/multicursors.nvim)
  - [Bookmarks](https://github.com/tomasky/bookmarks.nvim)
  - [Nvim-highlight-colors](https://github.com/brenoprata10/nvim-highlight-colors)
  - [Icon-picker](https://github.com/ziontee113/icon-picker.nvim)
</details>

## <a id="3" />Requirements

- Docker
- Docker Compose
- Some Nerd Font

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
      		directory = *
      
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
      
      		sudo docker-compose -f $repo_path/dockerized-dev-environment/docker-compose.yml --env-file $HOME/.dev-environment.env up -d --force-recreate
      
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
      
      		printf "  build\t\tForce the build of the container\n"
      
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
      		directory = *
      
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
      
          sudo docker-compose -f $repo_path/dockerized-dev-environment/docker-compose.yml --env-file $HOME/.dev-environment.env up -d --force-recreate
      
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
      
          printf "  build\t\tForce the build of the container\n"
      
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

## <a id="5" />Commands

The basic syntax is:

```bash
devE COMMAND
```

The available commands are:

`run` - Run the environment and bind the current working directory with container's home directory

`build` - Force the build of the container

`stop` - Stop the container and the Docker's daemon

`remove` - Remove the container, the image and stops the Docker's daemon

## <a id="6" />Shortcuts

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

Toggle trouble - <kbd>leader</kbd> + <kbd>d</kbd> + <kbd>t</kbd>

Show diagnostics for the current buffer - <kbd>leader</kbd> + <kbd>b</kbd> + <kbd>d</kbd>

Format the current buffer - <kbd>leader</kbd> + <kbd>b</kbd> + <kbd>f</kbd>

Show code actions for the line under the cursor - <kbd>leader</kbd> + <kbd>b</kbd> + <kbd>a</kbd>

## <a id="7" />Remarks

### LSP and autocomplete

The present and configured LSP servers are:

- `elixirls` and `nextls` for Elixir programming language.
- `tsserver` for JavaScript and Typescript programming language.
- `lua_ls` for Lua programming language.
- `css_variables` and `cssls` for CSS style sheet language.
- `dockerls` for Dockerfile.

To add a new LSP server, open the Neovim and use the [Mason](https://github.com/williamboman/mason.nvim) plugin.

To configure the LSP server, check the available servers and their configurations on the [Server Configurations](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md) page and paste the configuration inside the `.config/nvim/lua/plugins/LSP/nvim-lspconfig.lua` file.

Autocomplete is available only for the languages or file types with an LSP server installed and configured.

To add completions for a programming language or file type whitout configure a LSP server, see the [Built-In sources](https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md) of [None-ls](https://github.com/nvimtools/none-ls.nvim) plugin and put the configuration into `.config/nvim/lua/plugins/LSP/none-ls.lua` file.

### Diagnostics

The present and configured diagnostics tools are:

- `commitlint` for commit messages.
- `hadolint` for Dockerfile.
- `markdownlint` for Markdown.

To add a new dignostic tool, see the [Built-In sources for diagnostics](https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md#diagnostics) of [None-ls](https://github.com/nvimtools/none-ls.nvim) plugin and put the configuration into `.config/nvim/lua/plugins/LSP/none-ls.lua` file.

### Formatting

The present and configured formatting tools are:

- `mix` and `surface` for Elixir files.
- `prettier` for Javascript, Typescript, Vue, CSS, SCSS, LESS, HTML, JSON, JSONC, YAML, Markdown, Markdown.mdx, Graphql, Handlebars, Svelte, and Astro files.
- `stylua` for Lua files.

To add a new dignostic tool, see the [Built-In sources for formatting](https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md#formatting) of [None-ls](https://github.com/nvimtools/none-ls.nvim) plugin and put the configuration into `.config/nvim/lua/plugins/LSP/none-ls.lua` file.

### Atuin

The <kbd>tab</kbd> functionality doesn't work.

When you press <kbd>enter</kbd>, the command will be placed on the terminal, so you need to press <kbd>enter</kbd> to run it.
