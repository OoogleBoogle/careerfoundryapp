class Product < ActiveRecord::Base
	photo = Product.create(
						:name => "Test photo", 
						:description => "I created this in the Model!", 
						:image_url => "/images/California%20Street.jpg", 
						:cost => "£20")
	photo2 = Product.create(
						:name => "Test photo2", 
						:description => "I created this in the Model!", 
						:image_url => "/images/California%20Street.jpg", 
						:cost => "£20")
end
