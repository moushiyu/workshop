require 'test_helper'

class BlogsControllerTest < ActionController::TestCase
  setup do
    @blog = blogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blog" do
    assert_difference('Blog.count') do
<<<<<<< HEAD
      post :create, blog: {  }
=======
      post :create, blog: { content: @blog.content, title: @blog.title }
>>>>>>> d37d7472caf77aed29ed69d7a925d3d25e1a29c8
    end

    assert_redirected_to blog_path(assigns(:blog))
  end

  test "should show blog" do
    get :show, id: @blog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blog
    assert_response :success
  end

  test "should update blog" do
<<<<<<< HEAD
    patch :update, id: @blog, blog: {  }
=======
    patch :update, id: @blog, blog: { content: @blog.content, title: @blog.title }
>>>>>>> d37d7472caf77aed29ed69d7a925d3d25e1a29c8
    assert_redirected_to blog_path(assigns(:blog))
  end

  test "should destroy blog" do
    assert_difference('Blog.count', -1) do
      delete :destroy, id: @blog
    end

    assert_redirected_to blogs_path
  end
end
