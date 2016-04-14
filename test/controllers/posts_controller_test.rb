class PostsControllerTest < ActionController::TestCase
	test "should get index" do
		get :index
		assert_response :success
		assert_not_nil assigns(:posts)		
	end

	test "Current User can view a new Post" do
		sign_in(:mitch)
		get :new
		assert_template :new
		assert_response :ok
	end

	test "Current User can view a post" do
		sign_in(:mitch)
		get(:show, {'id' => "1"})
	end

	test "Current USer can create a post" do
		sign_in(:mitch)
		assert_difference('Post.count') do
			post :create, post: {id: 200}
		end
		assert_redirected_to_posts_show_path(assigns(:post))
	end
end