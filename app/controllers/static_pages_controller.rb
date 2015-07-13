class StaticPagesController < ApplicationController
  def index
  	@products = Product.all
  end

  def landing_page
	@products = Product.limit(2)
  end
end
