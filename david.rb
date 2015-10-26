class StringCalc

    def add(str)
        if str == ""
            @result = 0
        else
            @result = 0
            @array = str.split(",")
            @array.each do |x|
                # convert to integer
                x = x.to_i

                # add it to result
                @result += x
            end
        end
        # puts "#{@result} #{@result.class}"
        @result
    end

end

# ===================
system("clear")

test = StringCalc.new
result1 = test.add("")
result2 = test.add("6")
result3 = test.add("9")
result4 = test.add("6,7")
result5 = test.add("9,8")
result6 = test.add("9,9,9,9")

# ===================

if (result1 != 0)
    puts "Wrong value for empty string."
elsif
    (result2 != 6)
    puts "Wrong value for 6."
elsif
    (result3 != 9)
    puts "Wrong value for 9."
elsif
    (result4 != 13)
    puts "Wrong value for 13."
elsif
    (result5 != 17)
    puts "Wrong value for 17."
elsif
    (result6 != 36)
    puts "Wrong value for 36."
else
    puts "Correct results."
end
