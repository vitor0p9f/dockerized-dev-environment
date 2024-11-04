if status is-interactive
  su-exec root chown -R $USER:users /home
  su-exec root chown -R $USER:users /nix
end
