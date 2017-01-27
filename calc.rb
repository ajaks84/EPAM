def get_int_values
	arr=Array.new()
 		until arr.length==2 do x=Integer(gets) rescue false 
			if x 
				arr.push(x)
	    		else puts "I accept integers only! So enter a number"
			end
		end
    arr
end


puts "                 	 What would you like to do?:

			  [add] - a, 
			  [multiply] - m, 
			  [divide] - d,
			  [subtract] - s, 
			  [raise to power] -p,
			  [sqrt] - sq ?"
response = gets.chomp

case response.downcase
when 'a' 
  puts "Which numbers would you like to add?"
  operator = :+

when 's'
  puts "Which numbers would you like to subtract?"
  operator = :-

when 'm'
  puts "Which numbers would you like to multiply?"
  operator = :*

when 'd'
  puts "Which numbers would you like to divide?"
  operator = :/

when 'p'
  puts "Which number would you like to raise to power (don't forget to scpecify power)?"
  operator = :**   

when 'sq'
  puts "Which number would you like to sqrt?"
  	sqrt = true
  x = Math.sqrt(gets.chomp.to_i)
  puts "The answer is... #{ x }"

else puts "no valid operation detected"   
	sqrt = true
end

if !sqrt
	answer = get_int_values.inject(operator)
	puts "The answer is... #{ answer }"
else 
	puts "Programm has been finished"	
end