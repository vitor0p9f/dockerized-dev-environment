if status is-interactive
  # Change owner of the following folders
  su-exec root chown -R $USER:users /home
  su-exec root chown -R $USER:users /nix

  # Hook Direnv
  direnv hook fish | source
end
