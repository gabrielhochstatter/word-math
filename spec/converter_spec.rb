require "converter"

describe "Converter" do
    before(:each) do
        @converter = Converter.new
    end

    describe "convert words to numbers" do
        it "returns the integer version of the number passed in as words" do
            expect(@converter.convert_words_to_num("one")).to eq(1)
        end
    
        it "returns the integer version of the number passed in as words" do
            expect(@converter.convert_words_to_num("three")).to eq(3)
        end
    
        it "returns the integer version of the number passed in as words" do
            expect(@converter.convert_words_to_num("twelve")).to eq(12)
        end
    
        it "returns the integer version of the number passed in as words" do
            expect(@converter.convert_words_to_num("twenty")).to eq(20)
        end

        it "works over 20" do
            expect(@converter.convert_words_to_num("twenty nine")).to eq(29)
        end

        it "works over 30" do
            expect(@converter.convert_words_to_num("thirty nine")).to eq(39)
        end

        it "works over 40" do
            expect(@converter.convert_words_to_num("forty three")).to eq(43)
        end

        it "works over 50" do
            expect(@converter.convert_words_to_num("fifty five")).to eq(55)
        end

        it "works over 90" do
            expect(@converter.convert_words_to_num("ninety six")).to eq(96)
        end

        it "works over 100" do
            expect(@converter.convert_words_to_num("one hundred")).to eq(100)
        end

        it "works over 100" do
            expect(@converter.convert_words_to_num("one hundred and thirty three")).to eq(133)
        end

        it "works over 100" do
            expect(@converter.convert_words_to_num("two hundred and seventy")).to eq(270)
        end
    end

    describe "convert num to words" do
        it "converts one word named numbers correctly under 100" do
            expect(@converter.convert_num_to_words(1)).to eq("one")
        end

        it "converts one word named numbers correctly under 100" do
            expect(@converter.convert_num_to_words(12)).to eq("twelve")
        end

        it "converts one word named numbers correctly under 100" do
            expect(@converter.convert_num_to_words(20)).to eq("twenty")
        end

        it "converts one word named numbers correctly under 100" do
            expect(@converter.convert_num_to_words(50)).to eq("fifty")
        end

        it "converts two letter numbers under 100 correctly" do
            expect(@converter.convert_num_to_words(25)).to eq("twenty five")
        end

        it "converts two letter numbers under 100 correctly" do
            expect(@converter.convert_num_to_words(56)).to eq("fifty six")
        end

        it "converts 100 correctly" do
            expect(@converter.convert_num_to_words(100)).to eq("one hundred")
        end

        it "converts numbers correctly over 100" do
            expect(@converter.convert_num_to_words(200)).to eq("two hundred")
        end

        it "converts numbers correctly over 100" do
            expect(@converter.convert_num_to_words(256)).to eq("two hundred and fifty six")
        end

        it "converts numbers correctly over 100" do
            expect(@converter.convert_num_to_words(545)).to eq("five hundred and forty five")
        end

    end

end