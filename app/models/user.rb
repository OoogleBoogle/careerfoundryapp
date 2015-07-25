class User < ActiveRecord::Base
	has_many :orders
	validates :first_name, presence: true
	validates :last_name, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :send_sign_in
  def send_sign_in
    UserMailer.sign_up(self).deliver_later
  end

end
