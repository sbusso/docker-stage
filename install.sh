if [[ ! -f ~/.docker-stage ]]; then 
  curl -f -L -s https://raw.githubusercontent.com/sbusso/docker-stage/master/init.sh > ~/.docker-stage
  echo 'source ~/.docker-stage' >> ~/.zshrc
else
  curl -f -L -s https://raw.githubusercontent.com/sbusso/docker-stage/master/init.sh > ~/.docker-stage
fi

printf "\e[32mdocker-stage installed."