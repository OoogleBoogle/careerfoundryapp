class UserMailer < ApplicationMailer
	default from: "from@example.com"

	def contact_form(email, name, message)
		@message = message
		@name = name
		mail(
			:from => email,
			:to => 'simattfield@gmail.com',
			:subject => 'A message from ' + name)
	end

	def thank_you_mail(email, name, message)
		@message = message
		@name = name
		mail(
			:from => 'simattfield@gmail.com',
			:to => email,
			:subject => 'Thanks for your message')
	end

	def sign_up(user)
		@user = user
		mail(
			:from => 'simattfield@gmail.com',
			:to => user.email,
			:subject => 'Thanks for signing up!')
	end
end
