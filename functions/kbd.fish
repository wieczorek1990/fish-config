function kbd
  xkbcomp -I$HOME/.xkb ~/.xkb/keymap/kbd $DISPLAY $argv
end

