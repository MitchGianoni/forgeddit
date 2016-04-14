require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
