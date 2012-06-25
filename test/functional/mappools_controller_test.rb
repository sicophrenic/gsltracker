require 'test_helper'

class MappoolsControllerTest < ActionController::TestCase
  setup do
    @mappool = mappools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mappools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mappool" do
    assert_difference('Mappool.count') do
      post :create, mappool: {  }
    end

    assert_redirected_to mappool_path(assigns(:mappool))
  end

  test "should show mappool" do
    get :show, id: @mappool
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mappool
    assert_response :success
  end

  test "should update mappool" do
    put :update, id: @mappool, mappool: {  }
    assert_redirected_to mappool_path(assigns(:mappool))
  end

  test "should destroy mappool" do
    assert_difference('Mappool.count', -1) do
      delete :destroy, id: @mappool
    end

    assert_redirected_to mappools_path
  end
end
