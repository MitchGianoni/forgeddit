class PostsControllerTest < ActionController::TestCase
	test "Current User can create a comment" do
		sign_in(:mitch)
		assert_difference('Comment.count') do
			post :create, Comment: {id: 200}
		end
		assert_redirected_to_posts_show_path(assigns(:post))
	end

	test "Current user can delete a comment" do
		sign_in(:mitch)
		assert_difference("Comment.count") do
			delete :destroy, Comment: {id: 200}
		end
		assert_redirected_to_posts_show_path(assigns(:post))
end