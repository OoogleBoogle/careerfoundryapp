class StaticPagesController < ApplicationController
  def index
  	@products = Product.all
  end

  def landing_page
	@products = Product.limit(2)
  end

  def thank_you
  	@name = params[:name]
  	@email = params[:email]
  	@message = params[:message]
  	ActionMailer::Base.mail(
  		:from => @email,
  		:to => 'simattfield@gmail.com',
  		:subject => "A contact message from #{@name}",
  		:body => @message).deliver
    UserMailer.contact(@email, @name, @message).deliver
  end
end