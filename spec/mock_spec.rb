# add mock spec here

RSpec.describe "mocks" do
	it("double") do
		invitation = spy("invitation", {:accept => true});
		expect(invitation.accept).to eq(true)
	end
end