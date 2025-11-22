if [[ -z $TMUX ]]; then
  if tmux ls &> /dev/null; then
    read -n 1 -p 'Tmux action: attach/create/detach [A/c/d] ' action
    default_action='tmux attach'
  else
    read -n 1 -p 'Tmux action: create/detach [C/d] ' action
    default_action='tmux'
  fi
  [[ $action != '\n' ]] && echo
  case $action in
    a) tmux attach ;;
    c) tmux ;;
    d) ;;
    *) $default_action ;;
  esac
fi
