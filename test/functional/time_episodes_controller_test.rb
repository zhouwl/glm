require 'test_helper'

class TimeEpisodesControllerTest < ActionController::TestCase
  setup do
    @time_episode = time_episodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_episodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_episode" do
    assert_difference('TimeEpisode.count') do
      post :create, time_episode: @time_episode.attributes
    end

    assert_redirected_to time_episode_path(assigns(:time_episode))
  end

  test "should show time_episode" do
    get :show, id: @time_episode.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @time_episode.to_param
    assert_response :success
  end

  test "should update time_episode" do
    put :update, id: @time_episode.to_param, time_episode: @time_episode.attributes
    assert_redirected_to time_episode_path(assigns(:time_episode))
  end

  test "should destroy time_episode" do
    assert_difference('TimeEpisode.count', -1) do
      delete :destroy, id: @time_episode.to_param
    end

    assert_redirected_to time_episodes_path
  end
end
