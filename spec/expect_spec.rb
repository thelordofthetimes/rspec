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

	# pass actual >= expected
	it "to be >=" do
		expect(1).to be >= 1
	end
	it "to be >= (failure)" do
		expect(1).to be >= 2
	end

	# pass actual < expected
	it "to be <" do
		expect(1).to be < 2
	end
	it "to be < (failure)" do
		expect(2).to be < 1
	end

	# pass actual <= expected
	it "to be <=" do
		expect(1).to be <= 1
	end
	it "to be <= (failure)" do
		expect(2).to be <= 1
	end

	# todo: complete this expect
	it "to be_within(delta).of(expected)" do
		
	end
end

RSpec.describe "regex" do
	# pass actual.match(/regex/)
	it "to match" do
		expect("abc012").to match(/a/)
	end
	it "to match (failure)" do
		expect("abc012").to match(/z/)
	end	
end

RSpec.describe "type" do
	# for expect type
	class Person
	end	
	class Male < Person
	end

	# pass actual.cass == expected
	it "to be_an_instance_of" do
		person = Person.new()
		expect(person).to be_instance_of(Person)
	end
	it "to be_an_instance_of (failure)" do
		person = {}
		expect(person).to be_an_instance_of(Person)
	end

	# pass actual.kind_of?(expected)
	it "to be_a" do
		person = Male.new()
		expect(person).to be_a(Person)
	end
	it "to be_a (failure)" do
		person = {}
		expect(person).to be_a(Person)
	end	
end

RSpec.describe "truthiness" do
	# pass actual is truthy (not nil or false)
	it "to be_truthy" do
		expect(true).to be_truthy
	end
	it "to be_truthy (failure)" do
		expect(false).to be_truthy
	end

	# pass actual is falsy (nill or false)
	it "to be_falsy" do
		expect(nil).to be_falsy
	end
	it "to be_falsy (failure)" do
		expect(1).to be_falsy
	end

	# pass actual is nil
	it "to be_nil" do
		expect(nil).to be_nil
	end
	it "to be_nil (failure)" do
		expect(false).to be_nil
	end
end

RSpec.describe "expecting errors" do
	# todo: complete this describe
end