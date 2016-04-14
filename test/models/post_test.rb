require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'Post doesnt save without url' do
  	user = User.new
  	assert_not user.save
end
