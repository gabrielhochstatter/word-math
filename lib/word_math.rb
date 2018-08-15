require "converter"

class WordMath
    def initialize(converter_class = Converter.new)
        @converter = converter_class
    end

    def add(num_1, num_2)
        num_1_int = @converter.convert_words_to_num(num_1)
        num_2_int = @converter.convert_words_to_num(num_2)

        @converter.convert_num_to_words(num_1_int + num_2_int)
    end

    def subtract(num_1, num_2)
        num_1_int = @converter.convert_words_to_num(num_1)
        num_2_int = @converter.convert_words_to_num(num_2)

        @converter.convert_num_to_words(num_1_int - num_2_int)
    end

end
