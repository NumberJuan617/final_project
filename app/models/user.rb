class User < ActiveRecord::Base
	before_save { self.teamName = teamName.downcase }
	validates :teamName, presence: true, uniqueness: true,
						  length: { maximum: 6 }

  	validates :name, presence: true
  	has_secure_password
  	validates :password, length: { minimum: 6 }

end
