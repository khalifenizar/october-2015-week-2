class StringCalculator
  def add(str)
    if str == ""
      0
    elsif str.include?(",")
      # if it has a comma, split it
      numbers_arr = str.split(",")

      # and turn into numbers
      first = numbers_arr[0].to_i
      second = numbers_arr[1].to_i

      first + second
    else
      # if it's just one number, to integer
      str.to_i
    end
  end
end

my_calculator = StringCalculator.new


result = my_calculator.add("")

if result != 0
  puts "WRONG result for empty string"
else
  puts "CORRECT result for empty string"
end


result2 = my_calculator.add("9")

if result2 != 9
  puts "WRONG result for '9'"
else
  puts "CORRECT result for '9'"
end

result3 = my_calculator.add("6")

if result3 != 6
  puts "WRONG result for '6'"
else
  puts "CORRECT result for '6'"
end

result4 = my_calculator.add("6,7")

if result4 != 13
  puts "WRONG result for '6,7'"
else
  puts "CORRECT result for '6,7'"
end

result5 = my_calculator.add("9,8")

if result5 != 17
  puts "WRONG result for '9,8'"
else
  puts "CORRECT result for '9,8'"
end
