


#-2 -3 non retourne
#2 et 3 retor

function verif {
	test=1
	for fichier in $(ls ./coordo/*)
	do
		val=$(cat $fichier)
		if [ $val -eq -2 ] || [ $val -eq -3 ]
		then
			test=0
		fi
	done
	echo $test
}





function verification {
	test1=$(grep -r '\-2' coordo/*)
	test2=$(grep -r '\-3' coordo/*)
      if $test1 || $test2
      then
        echo '0'
      else
        echo '1'
      fi
}

#verification
