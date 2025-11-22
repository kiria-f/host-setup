files=( ~/rc/* )
if [[ -e "${files[0]}" ]]; then
  for f in "${files[@]}"; do
    [[ -f "$f" ]] && source "$f" || echo "Ошибка при source $f"
  done
fi
