<div align="center">
  <h1>Dockerized Dev Environment</h1>
</div>

<p align="justify">
    Este projeto visa construir um ambiente de desenvolvimento em um contêiner Docker. As ferramentas utilizadas no ambiente também são utilizadas no dia a dia do autor do projeto.
</p>

## Index

- [Mostruário](#1)
- [Ferramentas](#2)
- [Requisitos](#3)
- [Como utilizar](#4)
- [Comandos](#5)
- [Atalhos](#6)
- [Observações](#7)

## <a id="1" />Mostruário

https://github.com/user-attachments/assets/947790f8-9611-483a-96be-e77e7eb9d606

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

## <a id="2" />Ferramentas

O ambiente utiliza o `fish` como o shell padrão.

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

    OBS: Se não houver username e email configurados globalmente no git, você deve preencher esses campos no arquivo `.gitconfig`.

    OBS: Feche o terminal para aplicar as modificações feitas no arquivo de configuração do shell.

4. Substitua `< Caminho onde o repositório foi clonado, sem '/' no final. Exemplo: Documents/GitHub >` pelo caminho do repositório.

5. Execute `devE build` dentro do diretório desejado para construir o ambiente. Este comando irá vincular o diretório do host com o diretório `/home/` dentro do contêiner.

   OBS: `devE build` precisa ser executado apenas uma vez, ou quando for necessário forçar a construção do contêiner. Caso contrário, utilize `devE run`.

6. Dentro do ambiente, execute `setup` para configurá-lo.

    OBS: `setup` precisa ser executado apenas uma vez, ou quando for necessário reconfigurar o ambiente.

## <a id="5" />Comandos

A sintaxe básica é:

```bash
devE COMMAND
```

E os comandos disponíveis são:

`run` - Executa o ambiente e vincula o diretório de trabalho atual com o diretório home do contêiner.

`build` - Força o processo de build do contêiner.

`stop` - Para o contêiner e o daemon do Docker.

`remove` - Remove o contêiner, a imagem e para o daemon do Docker.

Para sair do ambiente, execute `exit` na linha de comando.

## <a id="6" />Atalhos

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

Mostrar/Esconder o trouble - <kbd>leader</kbd> + <kbd>d</kbd> + <kbd>t</kbd>

Mostrar diagnósticos para o buffer atual - <kbd>leader</kbd> + <kbd>b</kbd> + <kbd>d</kbd>

Formatar o buffer atual - <kbd>leader</kbd> + <kbd>b</kbd> + <kbd>f</kbd>

Mostrar ações de código para a linha abaixo do cursor - <kbd>leader</kbd> + <kbd>b</kbd> + <kbd>a</kbd>

## <a id="7" />Observações

### LSP e autocomplete

Os servidores LSP presentes e configurados são:

- `elixirls` e `nextls` para a linguagem de programação Elixir.
- `tsserver` para as linguagens de programação: JavaSccript e Typescript.
- `lua_ls` para a linguagem de programação Lua.
- `css_variables` e `cssls` para CSS.
- `dockerls` para os arquivos Dockerfile.

Para adicionar um novo servidor LSP, abra o Neovim e utilize o plugin [Mason](https://github.com/williamboman/mason.nvim).

Para configurar o servidor LSP, verifique os servidores disponíveis e suas configurações na página [Configuração dos Servidores](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md) e cole a configuração dentro do arquivo `.config/nvim/lua/plugins/LSP/nvim-lspconfig.lua`.

Autocomplete está disponível apenas para as linguagens ou tipos de arquivo com um servidor LSP instalado e configurado.

Para adicionar autocomplete para uma linguagem de programação ou tipo de arquivo sem configurar um servidor LSP, veja a página de [Servidores](https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md) do plugin [None-ls](https://github.com/nvimtools/none-ls.nvim) e cole a configuração no arquivo `.config/nvim/lua/plugins/LSP/none-ls.lua`.

### Diagnósticos

As ferramentas de diagnóstico presentes e configuradas são:

- `commitlint` para mensagens de commit.
- `hadolint` para arquivos Dockerfile.
- `markdownlint` para Markdown.

Para adicionar uma nova ferramenta de diagnóstico, veja as [Ferramentas de Diagnóstico](https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md#diagnostics) do plugin [None-ls](https://github.com/nvimtools/none-ls.nvim) e cole a configuração no arquivo `.config/nvim/lua/plugins/LSP/none-ls.lua`.

### Formatação

As ferramentas de formatação presentes e configuradas são:

- `mix` e `surface` para arquivos Elixir.
- `prettier` para arquivos Javascript, Typescript, Vue, CSS, SCSS, LESS, HTML, JSON, JSONC, YAML, Markdown, Markdown.mdx, Graphql, Handlebars, Svelte, e Astro.
- `stylua` para arquivos Lua.

Para adicionar uma nova ferramenta de formatação, veja as [Ferramentas de Formatação](https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md#formatting) do plugin [None-ls](https://github.com/nvimtools/none-ls.nvim) e cole a configuração no arquivo `.config/nvim/lua/plugins/LSP/none-ls.lua`.

### Atuin

A funcionalidade do <kbd>tab</kbd> não funciona.

Quando pressionar <kbd>enter</kbd>, o comando será copiado para a linha de comando, então é necessário pressionar <kbd>enter</kbd> novamente para executá-lo.
