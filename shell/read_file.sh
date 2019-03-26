#!/bin/bash

# @author: Thiago Fonseca
# @desc: 
#
#

echo "VALIDAÇÃO DE USUÁRIOS"

fileLocation=$1
usersFile=$(cat $fileLocation)

rtcUrl="https://rtc.com"

executionSuccess=1

while read -r line ; do
  lineArray=($line)
  user=${lineArray[0]}
  pass=${lineArray[1]}

  printf "\nUsuário: $user\n"

  result=$(scm login -r $rtcUrl -n local -u $user -P $pass 2>/dev/null)

  if [[ $result == *"Login efetuado"* ]] ; then
    echo "Status: Sucesso"
  else
    echo "Status: ERRO"
    executionSuccess=0
  fi

done <<< "$usersFile"

printf "\nResultado Geral $executionSuccess"

exit $executionSuccess
