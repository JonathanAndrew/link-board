class User < ActiveRecord::Base

	validates :name,
	presence: true,
	on: :create

	validates :email,
	presence: true,
	uniqueness: {:case_sensitive => true}

	validates :password,
	presence: true,
	on: :create

	has_secure_password

	def self.authenticate(email,password)
		User.find_by_email(email).try(:authenticate, password)
	end


end
