#!/bin/bash


if [ $1 -ge $2 ];then					#test é um comando... $1 é o primeiro argumento de um script
	echo "Posso continuar. $1 é maior que $2"

elif [ $2 -ge $1 ];then 
	echo "Já não. $1 não é maior que $2"
	
fi


echo "Arg1: $0"
echo "Arg1: $1"
echo "Cardinal: $#"
echo "asterisco: $*"


#vai mandar para o bash interpretar... podia interpretar com piten, etc...