require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test 'Comment doesnt save without text' do |variable|
  	comment = Comment.new
  	assert_not comment.save
  end
end
