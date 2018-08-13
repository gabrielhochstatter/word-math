require "arith"

describe "adding words" do
    before(:each) do
        @arith3 = Arith.new("three")
        @arith2 = Arith.new("two")
        @arith10 = Arith.new("ten")
        @arith20 = Arith.new("twenty")
        @arith83 = Arith.new("eighty three")
    end

    describe "#add" do
        it "adds the number passed as a word (three + four = seven)" do
            expect(@arith3.add("four")).to eq("seven")
        end

        it "adds the number passed as a word (two + six = eight)" do
            expect(@arith2.add("six")).to eq("eight")
        end

        it "adds to more than ten (3+9=12)" do
            expect(@arith3.add("nine")).to eq("twelve")
        end

        it "adds to 15" do
            expect(@arith10.add("five")).to eq("fifteen")
        end

        it "adds up to 20" do
            expect(@arith10.add("ten")).to eq("twenty")
        end

        it "adds over 20" do
            expect(@arith20.add("five")).to eq("twenty five")
        end

        it "adds over 20" do
            expect(@arith20.add("three")).to eq("twenty three")
        end

        it "adds over 20" do
            expect(@arith20.add("eight")).to eq("twenty eight")
        end

        it "adds over 20" do
            expect(@arith20.add("fifteen")).to eq("thirty five")
        end

        it "adds over 20" do
            expect(@arith20.add("fifty five")).to eq("seventy five")
        end

        it "adds properly when init-ed with two word numbers" do
            expect(@arith83.add("fifteen")).to eq("ninety eight")
        end

        it "works over 100" do
            expect(@arith83.add("twenty")).to eq("one hundred and three")
        end

        it "works over 100" do
            expect(@arith83.add("one hundred")).to eq("one hundred and eighty three")
        end
    end

    describe "parse words to numbers" do
        it "returns the integer version of the number passed in as words" do
            expect(@arith3.parse_words_to_int("one")).to eq(1)
        end
    
        it "returns the integer version of the number passed in as words" do
            expect(@arith3.parse_words_to_int("three")).to eq(3)
        end
    
        it "returns the integer version of the number passed in as words" do
            expect(@arith3.parse_words_to_int("twelve")).to eq(12)
        end
    
        it "returns the integer version of the number passed in as words" do
            expect(@arith3.parse_words_to_int("twenty")).to eq(20)
        end

        it "works over 20" do
            expect(@arith3.parse_words_to_int("twenty nine")).to eq(29)
        end

        it "works over 30" do
            expect(@arith3.parse_words_to_int("thirty nine")).to eq(39)
        end

        it "works over 40" do
            expect(@arith3.parse_words_to_int("forty three")).to eq(43)
        end

        it "works over 50" do
            expect(@arith3.parse_words_to_int("fifty five")).to eq(55)
        end

        it "works over 90" do
            expect(@arith3.parse_words_to_int("ninety six")).to eq(96)
        end
    end
    
    describe "convert sentence" do
        it "works over twenty" do
            expect(@arith3.convert_sentence("twenty five")).to eq(25)
        end
    
        it "works over twenty" do
            expect(@arith3.convert_sentence("twenty two")).to eq(22)
        end
    
        it "works over twenty" do
            expect(@arith3.convert_sentence("twenty nine")).to eq(29)
        end

        it "works over thirty" do
            expect(@arith3.convert_sentence("thirty nine")).to eq(39)
        end

        it "works over 100" do
            expect(@arith3.convert_sentence("one hundred")).to eq(100)
        end

        it "works over 100" do
            expect(@arith3.convert_sentence("one hundred and thirty three")).to eq(133)
        end
    end

    describe "parse num to words" do
        it "converts one word named numbers correctly under 100" do
            expect(@arith3.parse_num_to_words(1)).to eq("one")
        end

        it "converts one word named numbers correctly under 100" do
            expect(@arith3.parse_num_to_words(12)).to eq("twelve")
        end

        it "converts one word named numbers correctly under 100" do
            expect(@arith3.parse_num_to_words(20)).to eq("twenty")
        end

        it "converts one word named numbers correctly under 100" do
            expect(@arith3.parse_num_to_words(50)).to eq("fifty")
        end

        it "converts two letter numbers under 100 correctly" do
            expect(@arith3.parse_num_to_words(25)).to eq("twenty five")
        end

        it "converts two letter numbers under 100 correctly" do
            expect(@arith3.parse_num_to_words(56)).to eq("fifty six")
        end

        it "converts 100 correctly" do
            expect(@arith3.parse_num_to_words(100)).to eq("one hundred")
        end

        it "converts numbers correctly over 100" do
            expect(@arith3.parse_num_to_words(200)).to eq("two hundred")
        end

        it "converts numbers correctly over 100" do
            expect(@arith3.parse_num_to_words(256)).to eq("two hundred and fifty six")
        end

        it "converts numbers correctly over 100" do
            expect(@arith3.parse_num_to_words(545)).to eq("five hundred and forty five")
        end

        

    end
end
