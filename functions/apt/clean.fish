function clean
  sudo fish -c 'apt-get clean; apt-get autoclean; apt-get autoremove -y'
end

