class Converter

    def initialize
        # Below is a list of all numbers with unique names
        @number_names = {
            "zero" => 0,
            "one" => 1,
            "two" => 2,
            "three" => 3,
            "four" => 4,
            "five" => 5,
            "six" => 6,
            "seven" => 7,
            "eight" => 8,
            "nine" => 9,
            "ten" => 10,
            "eleven" => 11,
            "twelve" => 12,
            "thirteen" => 13,
            "fourteen" => 14,
            "fifteen" => 15,
            "sixteen" => 16,
            "seventeen" => 17,
            "eighteen" => 18,
            "nineteen" => 19,
            "twenty" => 20,
            "thirty" => 30,
            "forty" => 40,
            "fifty" => 50,
            "sixty" => 60,
            "seventy" => 70,
            "eighty" => 80,
            "ninety" => 90,
            "hundred" => 100
        } 
    end

    def convert_words_to_num(string)
        words = string.split(" ").delete_if{ |word| word == "and" }
        if words.include?("hundred") && words.length <= 2
            return @number_names[words[0]] * 100
        elsif words.include?("hundred")
            hundreds = words[0]
            number = @number_names[hundreds] * 100
            words.shift(2)
            number += words.map{ |word| @number_names[word] }.sum
            return number
        end

        words.map! { |word| @number_names[word] }.sum
    end

    def convert_num_to_words(num)
        hundreds = @number_names.key(num/100)
        tens = @number_names.key((num / 10) * 10)
        tens_over_100 = @number_names.key(((num % 100) / 10) * 10)
        
        if num % 100 == 0
            hundreds + " hundred"
        elsif num > 100 && ((num % 100) <= 20 || (num % 100) % 10 == 0)
            hundreds + " hundred and " + @number_names.key(num % 100)
        elsif num > 100
            hundreds + " hundred and " + tens_over_100 + " " + @number_names.key(num % 10)
        elsif num <= 20 || num % 10 == 0
            @number_names.key(num)
        else
            tens + " " + @number_names.key(num % 10)
        end
    end

end