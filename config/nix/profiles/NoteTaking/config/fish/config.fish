if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_prompt     
  set -l user (whoami)
  set -l cwd (prompt_pwd)
  echo -n (set_color yellow)"Note Taking "
  set_color white
  echo -n $cwd" "
  set_color yellow
  echo -n "> "
  set_color normal
 end
