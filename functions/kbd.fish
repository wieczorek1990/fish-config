function kbd
  xkbcomp -I$HOME/.xkb ~/.xkb/keymap/kdb $DISPLAY $argv
end

