


#-2 -3 non retourne
#2 et 3 retor




function verification {
      if ! grep -r '\-2' coordo/* || ! grep -r '\-3' coordo/*
      then 
        echo '1'
      else
        echo '0'
      fi
}

verification
