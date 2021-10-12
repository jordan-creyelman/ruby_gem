# string = 12.09
# if  Integer != string 
#   print "trouver"
# end 
test =false
 while test == false do
   puts "veuillez choisir le nombre "
   nombre = gets.chomp.to_i
   if   Integer == nombre || nombre<=0 
       puts "tromper "
   else 
        test=true    
   end 

end

