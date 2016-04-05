function kbd
  xkbcomp -I$HOME/.xkb ~/.xkb/keymap/kbd $DISPLAY $argv > /dev/null 2>&1
end

