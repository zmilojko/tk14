require 'test_helper'

class RacesControllerTest < ActionController::TestCase
  setup do
    @race = races(:one)
    sign_in users(:admin)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:races)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create race" do
    assert_difference('Race.count') do
      post :create, race: { category_id: @race.category_id, description: @race.description, intermediate_points: @race.intermediate_points, name: @race.name, race_secret: @race.race_secret, race_time: @race.race_time, status: @race.status }
    end

    assert_redirected_to race_path(assigns(:race))
  end

  test "should show race" do
    get :show, id: @race
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @race
    assert_response :success
  end

  test "should update race" do
    patch :update, id: @race, race: { category_id: @race.category_id, description: @race.description, intermediate_points: @race.intermediate_points, name: @race.name, race_secret: @race.race_secret, race_time: @race.race_time, status: @race.status }
    assert_redirected_to race_path(assigns(:race))
  end

  test "should destroy race" do
    assert_difference('Race.count', -1) do
      delete :destroy, id: @race
    end

    assert_redirected_to races_path
  end
end
