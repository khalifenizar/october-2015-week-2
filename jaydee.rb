class StringCalculator

  def add(numbers)
    if numbers.include?(',') == true
       x = numbers.split(',')
       int_x = x.map { |i| i.to_i }

       # inject == reduce
       int_x.inject{|sum,x| sum + x }
    else
        return numbers.to_i
    end
  end

 end



my_calculator = StringCalculator.new
puts my_calculator.add("")
puts my_calculator.add("7")
puts my_calculator.add("8, 4")
puts my_calculator.add("4, 9, 3")



 result = my_calculator.add("")
 if result == 0
  puts "Cierto. The result of an empty string is '0'.\n"
 else
  puts "Falso. The result of an empty string should be '0'.\n"
 end

result = my_calculator.add("7")
if result == 7
  puts "Cierto. The result of a single number is that number.\n"
else
  puts "Falso. The result of a single number should be that number.\n"
end

result = my_calculator.add("8, 4")
if result == 12
  puts "Cietro. The result of two numbers is the additive of those two numbers.\n"
else
  puts "Falso. The reult of two numbers should be the additive of those two numbers.\n"
end

result = my_calculator.add("4, 9, 3")
if result == 16
  puts "Cierto. The result of three numbers is the additive of those three numbers.\n"
else
  puts "Falso. The result of three numbers should be the additive of those three numbers\n"
end
