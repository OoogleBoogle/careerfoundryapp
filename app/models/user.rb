class User < ActiveRecord::Base
	has_many :orders
	validates :first_name, presence: true
	validates :last_name, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :send_sign_up
  def send_sign_up
    UserMailer.sign_up(self).deliver_later
  end

  def name
    [self.first_name, self.last_name].join(" ")
  end
end