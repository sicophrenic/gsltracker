require 'test_helper'

class MapAssignmentsControllerTest < ActionController::TestCase
  setup do
    @map_assignment = map_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:map_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create map_assignment" do
    assert_difference('MapAssignment.count') do
      post :create, map_assignment: { game_id: @map_assignment.game_id, map_id: @map_assignment.map_id }
    end

    assert_redirected_to map_assignment_path(assigns(:map_assignment))
  end

  test "should show map_assignment" do
    get :show, id: @map_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @map_assignment
    assert_response :success
  end

  test "should update map_assignment" do
    put :update, id: @map_assignment, map_assignment: { game_id: @map_assignment.game_id, map_id: @map_assignment.map_id }
    assert_redirected_to map_assignment_path(assigns(:map_assignment))
  end

  test "should destroy map_assignment" do
    assert_difference('MapAssignment.count', -1) do
      delete :destroy, id: @map_assignment
    end

    assert_redirected_to map_assignments_path
  end
end
