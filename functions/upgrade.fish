function upgrade
  sudo dnf upgrade --refresh --best --allowerasing -y
  sudo pip install -U (pip list --format=legacy | cut -f1 -d' ')
  sudo gem update --system
  sudo gem update
end

