class User < ActiveRecord::Base
	before_save { self.teamName = teamName.downcase }
	validates :teamName, presence: true, uniqueness: true,
						  length: { maximum: 6 }

  	validates :name, presence: true
  	has_secure_password
  	validates :password, length: { minimum: 6 }

	# Returns the hash digest of the given string.
	def User.digest(string)
		cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
		                                      BCrypt::Engine.cost
		BCrypt::Password.create(string, cost: cost)
	end


end
