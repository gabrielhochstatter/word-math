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

end
