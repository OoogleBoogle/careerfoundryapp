# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create(:name => "Jetty", :description => "Lake Tahoe Jetty", :image_url => "/images/Jetty-carousel.jpg", :cost => "£20", :orientation => "landscape")
Product.create(:name => "Chicago", :description => "Chicago skyline", :image_url => "/images/chicago-carousel.jpg", :cost => "£30", :orientation => "landscape")
Product.create(:name => "San Francisco", :description => "View down a street in San Francisco", :image_url => "/images/california-street.jpg", :cost => "£30", :orientation => "portrait")
Product.create(:name => "Rue Bourbon", :description => "Classic New Orleans", :image_url => "/images/rue-bourbon.jpg", :cost => "£20", :orientation => "portrait")
Product.create(:name => "Chicago", :description => "Chicago skyline", :image_url => "/images/chicago-carousel.jpg", :cost => "£30", :orientation => "landscape")
Product.create(:name => "San Francisco", :description => "View down a street in San Francisco", :image_url => "/images/california-street.jpg", :cost => "£30", :orientation => "portrait")
Product.create(:name => "Jetty", :description => "Lake Tahoe Jetty", :image_url => "/images/Jetty-carousel.jpg", :cost => "£20", :orientation => "landscape")
Product.create(:name => "Chicago", :description => "Chicago skyline", :image_url => "/images/chicago-carousel.jpg", :cost => "£30", :orientation => "landscape")
Product.create(:name => "Rue Bourbon", :description => "Classic New Orleans", :image_url => "/images/rue-bourbon.jpg", :cost => "£20", :orientation => "portrait")
Product.create(:name => "Jetty", :description => "Lake Tahoe Jetty", :image_url => "/images/Jetty-carousel.jpg", :cost => "£20", :orientation => "landscape")

Order.create(:user_id => 1, :product_id => 1)
