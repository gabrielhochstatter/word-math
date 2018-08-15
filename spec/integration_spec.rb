require "word_math"

describe "adding words integration tests" do
    before(:each) do
        @word_math = WordMath.new
    end

    describe "#add" do
        it "adds the number passed as a word (three + four = seven)" do
            expect(@word_math.add("three", "four")).to eq("seven")
        end

        it "adds the number passed as a word (two + six = eight)" do
            expect(@word_math.add("two", "six")).to eq("eight")
        end

        it "adds to more than ten (3+9=12)" do
            expect(@word_math.add("three", "nine")).to eq("twelve")
        end

        it "adds to more than twenty (15+9=24)" do
            expect(@word_math.add("fifteen", "nine")).to eq("twenty four")
        end

        it "adds to more than fifty (27+40=67)" do
            expect(@word_math.add("twenty seven", "forty")).to eq("sixty seven")
        end

        it "adds to more than one hundred (90+14=104)" do
            expect(@word_math.add("ninety", "fourteen")).to eq("one hundred and four")
        end

        it "adds to more than two hundred (200+56=256)" do
            expect(@word_math.add("two hundred", "fifty six")).to eq("two hundred and fifty six")
        end

    end

end
