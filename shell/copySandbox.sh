#!/bin/bash

developDir=$1
mockDir=$2
apisFile=$(cat $3)

cd $mockDir
git pull

printf "\n\n\n"

copyMocks() {
  version=$1
  route=$2

  from="$mockDir/$route/$version"
  to="$developDir/$route/$version"

  if [[ ! -d $from ]] && [[ -d $to ]] ; then
    echo "Versão $version existe em desenvolvimento mas não existe no diretório de mocks"

  elif [[ -d $from ]] && [[ ! -d $to ]] ; then
    echo "Versão $version existe no diretório de mocks mas não existe em desenvolvimento"

  elif [[ -d $from ]] && [[ -d $to ]] ; then
    differences=$(diff -r "$from/sandbox" "$to/sandbox" | wc -l)

    if [[ $differences == 0 ]] ; then
      echo "Não há diferenças na rota $route"
    else
      if [[ -d $from ]] && [[ -d $to ]] ; then        
        echo "Copiando de $from/sandbox para $to "
        cp -R "$from/sandbox" "$to"
      fi  
    fi
  fi  
}

while read -r line ; do
  route=($line)
  
  copyMocks "v1" $route
  copyMocks "v2" $route

done <<< "$apisFile"



