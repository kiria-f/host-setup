alias py="python3"

last_dirs() (
  path="$(pwd)"
  home=~
  echo $path | sed "s|$home|~|" | sed 's|^/|\\|' | rev | sed -E "s|^([^/]*/?[^/]*).*|\1|" | rev | sed 's|^\\|/|'
)

PS1=' ○ $(last_dirs) ❯ '
