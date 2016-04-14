require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'User saves with all parameters' do 
  	user = User.create(username: Bob, email: bob@bob.bob, password: itsnotbob)
  	assert user.valid?, 'User couldnt save'
  end

  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
