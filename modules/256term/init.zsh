local256="$COLORTERM$XTERM_VERSION$ROXTERM_ID$KONSOLE_DBUS_SESSION$VTE_VERSION"
if [[ -n "$local256" ]]; then
  case "$TERM" in
    'xterm') TERM="xterm-256color";;
    'screen') TERM="screen-256color";;
    'Eterm') TERM="Eterm-256color";;
  esac
  export TERM

  if [[ -n "$TERMCAP" && "$TERM" = "screen-256color" ]]; then
    TERMCAP=$(echo "$TERMCAP" | sed -e 's/Co#8/Co#256/g')
    export TERMCAP
  fi
fi
unset local256
