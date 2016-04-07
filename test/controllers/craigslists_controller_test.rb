require 'test_helper'

class CraigslistsControllerTest < ActionController::TestCase
  setup do
    @craigslist = craigslists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:craigslists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create craigslist" do
    assert_difference('Craigslist.count') do
      post :create, craigslist: {  }
    end

    assert_redirected_to craigslist_path(assigns(:craigslist))
  end

  test "should show craigslist" do
    get :show, id: @craigslist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @craigslist
    assert_response :success
  end

  test "should update craigslist" do
    patch :update, id: @craigslist, craigslist: {  }
    assert_redirected_to craigslist_path(assigns(:craigslist))
  end

  test "should destroy craigslist" do
    assert_difference('Craigslist.count', -1) do
      delete :destroy, id: @craigslist
    end

    assert_redirected_to craigslists_path
  end
end
