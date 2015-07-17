class UserMailer < ApplicationMailer
	default from: "from@example.com"

	def contact(email, name, message)
		@message = message
		mail(
			:from => email
			:to => 'simattfield@gmail.com'
			:subject => 'A message from #{name}')
	end
end
