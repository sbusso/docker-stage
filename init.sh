stages=($(docker-machine ls | awk 'NR > 1 {print $1}'))

if [[ -z "$DOCKER_STAGE" ]]; then
  export DOCKER_STAGE=$stages[1]
fi

CMD='alias docker="/usr/local/bin/docker $(docker-machine config $DOCKER_STAGE)"'
eval $CMD

function docker-stage () {
  if [[ -z $1 ]]; then
    source ~/.docker-env
  else
    export DOCKER_STAGE=$1
    docker-machine active $1
    eval $CMD
  fi
}
