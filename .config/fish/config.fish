if status is-interactive
  # Commands to run in interactive sessions can go here
  atuin init fish | source

	alias ls="exa --all --icons --long"
	alias cat="bat"
end

source ~/.asdf/asdf.fish # Add asdf to $PATH

function setup
	set_color brmagenta
  echo "Installing asdf..."
  set_color normal
	
	git clone https://github.com/asdf-vm/asdf.git /root/.asdf/ --branch v0.14.0

	source ~/.asdf/asdf.fish # Add asdf to $PATH

	set_color brmagenta
	echo "Generating symbolic link for completions..."
  set_color normal

	mkdir -p ~/.config/fish/completions; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions

  set_color brmagenta
  echo "Installing erlang..."
  set_color normal

  asdf plugin-add erlang
  asdf plugin-update erlang
  asdf install erlang latest
  asdf global erlang latest

  set_color brmagenta
  echo "Installing elixir..."
  set_color normal

  asdf plugin-add elixir
  asdf plugin-update elixir
  asdf install elixir latest
  asdf global elixir latest
end
