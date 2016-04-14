require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'Post doesnt save without url' do
  	user = User.new
  	assert_not user.save

  # test "the truth" do
  #   assert true
  # end

  validates :user_id, presence: true
  validates :label, presence: true
  validates :url, presence: true
end
