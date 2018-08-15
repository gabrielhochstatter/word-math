require "word_math"

describe "WordMath unit tests" do
    before(:each) do
        @converter = double(:converter)
        allow(@converter).to receive(:convert_words_to_num)
        allow(@converter).to receive(:convert_num_to_words)
        @word_math = WordMath.new(@converter)
    end

    describe "#add" do
        it "calls the correct conversion methods with correct arguments" do
            allow(@converter).to receive(:convert_words_to_num) { 1 }
            expect(@converter).to receive(:convert_words_to_num).with("one").exactly(2).times
            @word_math.add("one", "one")
        end

        it "calls the correct conversion methods with correct arguments" do
            allow(@converter).to receive(:convert_words_to_num) { 1 }
            expect(@converter).to receive(:convert_words_to_num).with("twelve").once
            expect(@converter).to receive(:convert_words_to_num).with("ten").once
            @word_math.add("twelve", "ten")
        end

        it "calls the correct conversion methods with correct arguments" do
            allow(@converter).to receive(:convert_words_to_num) { 5 }
            expect(@converter).to receive(:convert_num_to_words).with(10)
            @word_math.add("five", "five")
        end
    end

end 