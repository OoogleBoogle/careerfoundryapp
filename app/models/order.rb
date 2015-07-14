class Order < ActiveRecord::Base
	belongs_to :product
	Product.create(:name => "Jetty", :description => "Lake Tahoe Jetty", :image_url => "/images/Jetty-carousel.jpg", :cost => "£20")
	Product.create(:name => "Chicago", :description => "Chicago Skyline", :image_url => "/images/chicago-carousel.jpg", :cost => "£20")
	Product.create(:name => "San Francisco", :description => "View down a San Franciscan Street", :image_url => "/images/california-street.jpg", :cost => "£30")
	Product.create(:name => "Rue Bourbon", :description => "Rue Bourbon: New Orleans", :image_url => "/images/rue-bourbon.jpg", :cost => "£40")
end