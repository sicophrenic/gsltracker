require 'test_helper'

class MapPoolsControllerTest < ActionController::TestCase
  setup do
    @map_pool = map_pools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:map_pools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create map_pool" do
    assert_difference('MapPool.count') do
      post :create, map_pool: {  }
    end

    assert_redirected_to map_pool_path(assigns(:map_pool))
  end

  test "should show map_pool" do
    get :show, id: @map_pool
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @map_pool
    assert_response :success
  end

  test "should update map_pool" do
    put :update, id: @map_pool, map_pool: {  }
    assert_redirected_to map_pool_path(assigns(:map_pool))
  end

  test "should destroy map_pool" do
    assert_difference('MapPool.count', -1) do
      delete :destroy, id: @map_pool
    end

    assert_redirected_to map_pools_path
  end
end
