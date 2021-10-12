
 require_relative '../lib/is_multiple_of_3_or_5?'


def sum_of_3_or_5_multiples(final_number)

  final_sum = 0 #cette variable est la somme finale qui sera retournée. Ici on l'initialise à zéro
  i=0
  # Ici, lance une boucle qui va de zéro au chiffre "final_number" EXCLU (car on est sur du strictement inférieur)
  # cette boucle indente à chaque tour une variable (par exemple "current_number") qui vaudra 0 puis 1 puis 2 ... etc.
  while i<final_number
    if is_multiple_of_3_or_5?(i)
      final_sum += i 
      # si la réponse est "true", alors je rajoute la valeur de "current_number" à la variable "final_sum".
    
      # si la réponse est "false"…ben y a pas de else : ce "current_number" n'est pas multiple,
      # donc on passe au suivant en oubliant celui-là. On repart dans la boucle.
    end
    i+=1
  end 
  #Ici, positionne la fin de la boucle

  return final_sum #on retourne la variable qui contient la somme du tout
end
test = false
  while test == false do
    puts "veuillez choisir le nombre "
    final_number = gets.chomp.to_i
    if   Integer == final_number || final_number<=0 
        puts "tromper "
    else 
         test=true    
    end 
  end 
print  sum_of_3_or_5_multiples(final_number)
