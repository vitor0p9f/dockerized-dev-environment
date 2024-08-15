if status is-interactive
  # Commands to run in interactive sessions can go here

  su-exec root chown -R $USER ~/.asdf/
  su-exec root chown -R $USER ~/.local/
  su-exec root chown -R $USER ~/.ssh/
  su-exec root chown -R $USER /usr/

  atuin init fish | source

	alias ls="exa --all --icons --long"
	alias cat="bat"

  source ~/.asdf/asdf.fish # Add asdf to $PATH
  source ~/.asdf/completions/asdf.fish # Enable completions for fish
end

function setup
	
  set_color brmagenta
  echo "Installing asdf..."
  set_color normal
	
	git clone https://github.com/asdf-vm/asdf.git ~/.asdf/ --branch v0.14.0

	source ~/.asdf/asdf.fish # Add asdf to $PATH

	set_color brmagenta
	echo "Generating symbolic link for completions..."
  set_color normal

	mkdir -p ~/.config/fish/completions; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions

  set_color brmagenta
  echo "Installing Erlang..."
  set_color normal

  asdf plugin-add erlang
  asdf plugin-update erlang
  asdf install erlang latest
  asdf global erlang latest

  set_color brmagenta
  echo "Installing Elixir..."
  set_color normal

  asdf plugin-add elixir
  asdf plugin-update elixir
  asdf install elixir latest
  asdf global elixir latest

  set_color brmagenta
  echo "Installing Phoenix framework dependencies..."
  set_color normal

  mix archive.install hex phx_new 
end

function update
  set_color brmagenta
  echo "Updating asdf..."
  set_color normal

  asdf update

  set_color brmagenta
  echo "Updating all asdf plugins..."
  set_color normal

  asdf plugin update --all

  set_color brmagenta
  echo "Updating Erlang..."
  set_color normal

  asdf install erlang latest
  asdf global erlang latest

  set_color brmagenta
  echo "Updating Elixir..."
  set_color normal

  asdf install elixir latest
  asdf global elixir latest
end
