require 'rails_helper'

RSpec.describe User, type: :model do

	context "User created" do
		before {@user = User.create(first_name: "Bob", last_name: "Bobbington", email: "bob@example.com", password: "password")}

		it "is a valid user" do
			expect(@user).to be_valid
		end

		it "Should return full name" do
			expect(@user.name).to eq("Bob Bobbington")
		end

		it "sets default admin to nil" do
			expect(@user.admin).to eq(false)
		end

	end

	context "first_name missing" do
		before {@user = User.new(first_name: nil, last_name: "Bobbington", email: "bob@example.com", password: "password")}

		it "throws error" do
			expect(@user).to_not be_valid
		end	
	end

	context "last_name missing" do
		before {@user = User.new(first_name: "Bob", last_name: nil, email: "bob@example.com", password: "password")}

		it "throws error" do
			expect(@user).to_not be_valid
		end
	end
end
