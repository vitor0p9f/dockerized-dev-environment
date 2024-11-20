if status is-interactive
  # Change owner of the following folders
  su-exec root chown -R $USER:users /home
  su-exec root chown -R $USER:users /nix

  # Hook Direnv
  direnv hook fish | source

  # Add ElixirLS to PATH
  set -U fish_user_paths /nix/store/lcwfgv6h5wszl5qbwygpb92pmnjxk1ks-elixir-ls-0.24.1/lib $fish_user_paths
end
