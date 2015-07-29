require 'rails_helper'

RSpec.describe Product, type: :model do

  context "Valid Product created" do
  	before {@p = Product.new(name: "test", description: "description", image_url: "image.png", cost: "20")}

  	it "is a Valid product" do
  		expect(@p).to be_valid
  	end
  end

  context "Product name missing" do
  	before {@p = Product.new(name: nil, description: "description", image_url: "image.png", cost: "20")}

  	it "is invalid product" do
  		expect(@p).to_not be_valid
  	end
  end

  context "Cost missing" do
  	before {@p = Product.new(name: "test", description: "description", image_url: "image.png", cost: nil)}

  	it "is invalid product" do
  		expect(@p).to_not be_valid
  	end
  end

  context "image missing" do
  	before {@p = Product.new(name: "test", description: "description", image_url: nil, cost: "20")}

  	it "is invalid product" do
  		expect(@p).to_not be_valid
  	end
  end

  context "description missing" do
  	before {@p = Product.new(name: "test", description: nil, image_url: "image.png", cost: "20")}

  	it "is invalid product" do
  		expect(@p).to_not be_valid
  	end
  end

  context "calling average_rating" do
  	before {
  		@p = Product.create(id: 1, name: "test", description: "test", image_url: "image.png", cost: "20")
  		@p.comments.create(product_id: 1, user_id: 1, body: "test", rating: 5)
  		@p.comments.create(product_id: 1, user_id: 1, body: "test", rating: 1)
		}

  	it "produces an average rating" do
      expect(@p.average_rating).to eq(3)
  	end
  end

end
