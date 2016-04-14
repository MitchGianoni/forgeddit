require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test 'Comment doesnt save without text' do |variable|
  	comment = Comment.new
  	assert_not comment.save
  end

  validates :user_id, presence: true
  validates :post_id, presence: true
  validates :text, presence: true
end
