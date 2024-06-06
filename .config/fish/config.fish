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

	set_color brmagenta
	echo "Generating symbolic link for completions..."
    	set_color normal

	mkdir -p ~/.config/fish/completions; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions

	set_color brmagenta
    	echo "Installing Rust..."
    	set_color normal

    	asdf plugin-add rust
    	asdf plugin-update rust
    	asdf install rust latest
    	sleep 1
    	asdf global rust latest

	set_color brmagenta
    	echo "Installing Ruby + YJIT..."
    	set_color normal

    	set RUBY_CONFIGURE_OPTS --enable-yjit
    	asdf plugin-add ruby
    	asdf plugin-update ruby
    	asdf install ruby latest
    	sleep 1
    	asdf global ruby latest

	set_color brmagenta
    	echo "Installing NodeJS..."
    	set_color normal

	asdf plugin-add nodejs
	asdf plugin-update nodejs
	asdf install nodejs latest
	asdf global nodejs latest
end
