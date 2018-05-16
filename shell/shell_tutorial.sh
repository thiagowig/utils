#!/bin/bash

#if [ 1 -eq 2 ] ; then
#	echo "They are equal!"
#elif [1 > 2] ; then
#  echo "One is greater than 2!"
#else
#  echo "One is smaller than 2!"
#fi

#if [ 1 = 2 ] ; then
#  echo "Nothing"
#else
#  if [ 1 = 2 ] ; then
#    echo "Nothing"
#  else
#    echo "Go raptors"
#  fi
#fi

#http://www.freeos.com/guides/lsst/ch03sec06.html

#for i in 1 2 3 4 5
#do
#  echo "Welcome $i times"
#done
#for ((  i = 0 ;  i <= $1;  i++  ))
#do
#  echo "Welcome $i times"
#done
#
#for i in $(seq 1 $1)
#do
#   echo "Welcome $i times"
#done


#if [ $# -eq 0 ] ; then
#  echo "Argument is missing"
#elif [ $1 -ge 0 2>/dev/null ] ; then
#  echo "Number is $1"
#
#  for i in $1
#  do
#    echo "Iteration numer $i"
#  done

#else
#  echo "The argument is not a number"
#fi

#for (( i = 1; i <= 100; i++ )) ### Outer for loop ###
#do
   #for (( j = 1 ; j <= 100; j++ )) ### Inner for loop ###
   #do
    #    tot=`expr $i + $j`
    #    tmp=`expr $tot % 2`
    #    if [ $tmp -eq 0 ]; then
    #        echo -e -n "\033[47m "
    #    else
    #        echo -e -n "\033[40m "
    #    fi
  #done
 #echo -e -n "\033[40m" #### set back background colour to black
 #echo "" #### print the new line ###
#done

#http://www.freeos.com/guides/lsst/ch03sec07.html

clear

#echo "Begin"
#array=("Thiago" "Santos" "Fonseca")
#for i in "${array[@]}";
#do
#  echo "$i"
#done

source import.sh

echo ${modulesDependency[OPE]}

IFS=' ' read -r -a modulesToBuild <<< "${modulesDependency[OPE]}"

for i in "${modulesToBuild[@]}";
do
  echo "The module is $i"
done





# Replace a file content
sed -i '/cucumber/ s//cucumber-test/g' package.json
