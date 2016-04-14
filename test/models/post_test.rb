require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  validates :user_id, presence: true
  validates :label, presence: true
  validates :url, presence: true
end
