#!/bin/bash

x=123
y=-1
while [ -z "$y" ] || [ "$y" -ne $x ]; do
	
	echo -n "diga número: "
	read y
	if [ ! -z "$y" ]; then 
		if [ "$y" -lt $x ]; then		
			echo "É muito pequeno. Tente de Novo"
		elif [ "$y" -gt $x ]; then
			echo "É muito Grande. Tente de Novo"
		else 
			echo ""
			echo "Parabéns!! É mesmo esse!!!"
			echo ""
		
		fi
	fi
done







#como interrogar o utilizador???
#Meu script que recebe um x=$1

#while x=$123 ; do
#	#como interrogar o utilizador???
#	read "Qual o número a inserir "	
#	if [ $x -lt $1 ]; then		
#		echo "É muito pequeno. Tente de Novo"
#	elif [ $x -gt $1 ]; then
#		echo "É muito Grande. Tente de Novo"
#	else 
#		echo "Parabéns!! É mesmo esse!!!"
#fi


# tirado do manual

#y=700
#x=0
#while [ $x != 700 ]
#do
#  echo -n "Adivinhe o numero: "; read x
#done




