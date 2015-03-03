if [[ -f ~/.docker-stage ]]; then 
  printf "\e[32mupdating docker-stage...\n"
  rm ~/.docker-stage
  curl -f -L -s https://raw.githubusercontent.com/sbusso/docker-stage/master/init.sh > ~/.docker-stage
  source ~/.docker-stage
  printf "\e[32mdocker-stage updated."
else
  printf "\e[32minstalling docker-stage...\n"
  curl -f -L -s https://raw.githubusercontent.com/sbusso/docker-stage/master/init.sh > ~/.docker-stage
  echo '\nsource ~/.docker-stage' >> ~/.zshrc
  source ~/.docker-stage
  printf "\e[32mdocker-stage installed."
fi

