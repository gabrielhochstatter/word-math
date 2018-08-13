class Arith
    def initialize(number)
        @number = number
        # THIS IS A LIST OF ALL NUMBERS WITH UNIQUE NAMES
        @dictionary = {
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

    def add(num_to_add)
        total_as_int = parse_words_to_int(@number) + parse_words_to_int(num_to_add)

        parse_num_to_words(total_as_int)
    end

    def parse_words_to_int(string)
        number_of_words = string.split(" ").length

        if number_of_words > 1
            convert_sentence(string)
        else
            @dictionary[string]
        end
    end

    def parse_num_to_words(num)
        hundreds = @dictionary.key(num/100)
        tens = @dictionary.key((num / 10) * 10)
        tens_over_100 = @dictionary.key(((num % 100) / 10) * 10)
        
        if num % 100 == 0
            hundreds + " hundred"
        elsif num > 100 && ((num % 100) <= 20 || (num % 100) % 10 == 0)
            hundreds + " hundred and " + @dictionary.key(num % 100)
        elsif num > 100
            hundreds + " hundred and " + tens_over_100 + " " + @dictionary.key(num % 10)
        elsif num <= 20 || num % 10 == 0
            @dictionary.key(num)
        else
            tens + " " + @dictionary.key(num % 10)
        end
    end
    
    def convert_sentence(string)
        words = string.split(" ").delete_if{ |word| word == "and" }
        if words.include?("hundred") && words.length <= 2
            return @dictionary[words[0]] * 100
        elsif words.include?("hundred")
            

        end

        words.map! { |word| @dictionary[word] }.sum
    end
    

end
