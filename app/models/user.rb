class User < ActiveRecord::Base
	validates :first_name, :last_name, :email_address, presence: true
	has_many :owners
	has_many :blogs, through: :owners
end
