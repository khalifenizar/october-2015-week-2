class String_calc
    def add_num (num_string)
        @sum = 0
        @num_array = num_string.split(",")

        # return 0 for blank string
        # return num for one num
        # return sum for 2 num

        if @num_array.length == 0
            return 0
        elsif @num_array.length == 1
            return @num_array[0].to_i
        elsif @num_array.length > 1
            @num_array.each { | num | @sum += num.to_i }
            return @sum
        else
            return "NOT A VALID ARGUMENT, BUDDY!"
        end
    end
end


# ===== TESTING APPLICATION CODE ======= #
my_test = String_calc.new

if my_test.add_num("") != 0
    puts "WRONG RESULT FOR EMPTY STRING"
elsif my_test.add_num("6") != 6 || my_test.add_num("9") != 9
    puts "WRONG RESULT FOR SINGLE-DIGIT STRING"
elsif my_test.add_num("6,7") != 13 || my_test.add_num("9,8") != 17 || my_test.add_num("12,33,6") != 51
    puts "WRONG RESULT FOR DOUBLE-DIGIT OR GREATER STRING"
else
    puts "ALL TESTS PASS!"
end
