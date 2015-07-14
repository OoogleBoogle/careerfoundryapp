class Product < ActiveRecord::Base
	has_many :orders
	Product.create(:name => "Jetty", :description => "Lake Tahoe Jetty", :image_url => "/images/Jetty-carousel.jpg", :cost => "£20")
	Product.create(:name => "Chicago", :description => "Chicago skyline", :image_url => "/images/chicago-carousel.jpg", :cost => "£30")
	Product.create(:name => "San Francisco", :description => "View down a street in San Francisco", :image_url => "/images/california-street.jpg", :cost => "£30")
	Product.create(:name => "Rue Bourbon", :description => "Classic New Orleans", :image_url => "/images/rue-bourbon.jpg", :cost => "£20")
end
