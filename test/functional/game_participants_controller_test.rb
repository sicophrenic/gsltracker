require 'test_helper'

class GameParticipantsControllerTest < ActionController::TestCase
  setup do
    @game_participant = game_participants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_participants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_participant" do
    assert_difference('GameParticipant.count') do
      post :create, game_participant: { game_id: @game_participant.game_id, player_id: @game_participant.player_id }
    end

    assert_redirected_to game_participant_path(assigns(:game_participant))
  end

  test "should show game_participant" do
    get :show, id: @game_participant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_participant
    assert_response :success
  end

  test "should update game_participant" do
    put :update, id: @game_participant, game_participant: { game_id: @game_participant.game_id, player_id: @game_participant.player_id }
    assert_redirected_to game_participant_path(assigns(:game_participant))
  end

  test "should destroy game_participant" do
    assert_difference('GameParticipant.count', -1) do
      delete :destroy, id: @game_participant
    end

    assert_redirected_to game_participants_path
  end
end
