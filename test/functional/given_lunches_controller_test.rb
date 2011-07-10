require 'test_helper'

class GivenLunchesControllerTest < ActionController::TestCase
  setup do
    @given_lunch = given_lunches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:given_lunches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create given_lunch" do
    assert_difference('GivenLunch.count') do
      post :create, :given_lunch => @given_lunch.attributes
    end

    assert_redirected_to given_lunch_path(assigns(:given_lunch))
  end

  test "should show given_lunch" do
    get :show, :id => @given_lunch.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @given_lunch.to_param
    assert_response :success
  end

  test "should update given_lunch" do
    put :update, :id => @given_lunch.to_param, :given_lunch => @given_lunch.attributes
    assert_redirected_to given_lunch_path(assigns(:given_lunch))
  end

  test "should destroy given_lunch" do
    assert_difference('GivenLunch.count', -1) do
      delete :destroy, :id => @given_lunch.to_param
    end

    assert_redirected_to given_lunches_path
  end
end
