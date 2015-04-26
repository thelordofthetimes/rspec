RSpec.describe "equivalence" do
	# pass actual == expected
	it "to eq" do
		expect(0).to eq(0)
	end
	it "to eq (failure)" do
		expect(0).to eq(1)	
	end

	# pass actual.eql?(expected)
	it "to eql" do
		expect(1).to eq(1)
	end
	it "to eql (failure)" do
		expect(1).to eql(1.0)
	end

	# pass not(actual == expected)
	it "not_to eq" do
		expect(1).not_to eq(2)
	end
end

RSpec.describe "identity" do
	# pass actual.equal?(expected)
	it "to be" do
		x = {}
		y = x
		expect(x).to be(y)
	end
	it "to be (failure)" do
		x = {}
		y = {}
		expect(x).to be(y)
	end
end

RSpec.describe "comparisions" do
	# pass actual > expected
	it "to be >" do
		expect(2).to be > 1
	end
	it "to be > (failure)" do
		expect(1).to be > 2
	end

end