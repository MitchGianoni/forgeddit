require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  validates :user_id, presence: true
  validates :post_id, presence: true
  validates :text, presence: true
end
