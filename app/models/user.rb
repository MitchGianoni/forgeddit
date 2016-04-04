class User < ActiveRecord::Base
	validates_presence_of :password, :email
	has_many :posts
	has_many :comments

	validates :password, length: { minimum: 8 }
	validates :email, format: { with: /.+@.+\..+/,
					message: "Must have an @ symbol and a period." }
end
