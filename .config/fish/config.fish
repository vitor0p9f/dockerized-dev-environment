if status is-interactive
    # Commands to run in interactive sessions can go here
end

function setup
	set_color brmagenta
    	echo "Installing asdf..."
    	set_color normal

	git clone https://github.com/asdf-vm/asdf.git /root/.asdf/ --branch v0.14.0

	set_color brmagenta
	echo "Generating symbolic link for completions..."
    	set_color normal

	source ~/.asdf/asdf.fish
	mkdir -p ~/.config/fish/completions; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions

	set_color brmagenta
    	echo "Installing Rust..."
    	set_color normal

    	asdf plugin-add rust
    	asdf plugin-update rust
    	asdf install rust latest
    	sleep 1
    	asdf global rust latest
end
