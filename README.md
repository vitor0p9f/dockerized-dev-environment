<h1 align="center">Dockerized Dev Environment</h1>

<p align="justify">
  This project consists of a portable development environment. Its purpose is to provide a manner to access your development environment in any operational system that supports docker and docker-compose without much effort or configuration.
</p>

## Requirements - Linux

* Docker
* Docker Compose
* If you're using Wayland, you'll need XWayland.

## Tools

<details open>
  <summary>Git</summary>

  * Lazygit
  * GitHub CLI
</details>

<details open>
  <summary>Shell</summary>

  * Fish
  * Nix
  * Tmux
  * Direnv
</details>

## How to install

1. Grant that the `~/Documents/Programming/` directory exists.

2. Clone this repository inside `~/Documents/Programming/`.

3. Grant run permission to the `init.sh` file using `chmod +x init.sh`.

4. Add the following alias to your shell

    <details open>
      <summary>Bash</summary>
    
      ```Bash
        alias devE="~/Documents/Programming/dockerized-dev-environment/init.sh"
      ```
    </details>

5. Run the `devE build` command. You'll need 

## Create development environments with nix-shell and Direnv

1. Make a directory inside the `~/Documents/Programming`.

2. Create a `.envrc` file with the following content:

    ```
      use nix ./shell.nix
    ```
3. Create a `shell.nix` file with the following content:

   ```nix
     { pkgs ? import <nixpkgs> {} }:
     pkgs.mkShell {
       buildInputs = [
         # Declare here the packages to install
         pkgs.packageName
       ];
  
       # Declare here the commands that the shell must run on start-up
       shellHook = ''
       '';
  
       # Declare here your environment variables. Declare the variables like the example below
       TESTE = "some_value";
     }
   ```

 4. Run `direnv allow` inside the project directory to allow Direnv automatically start the environment.

 5. The environment will be loaded every time you enter the project directory and unloaded when you exit it. 
