require 'test_helper'

class LunchListsControllerTest < ActionController::TestCase
  setup do
    @lunch_list = lunch_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lunch_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lunch_list" do
    assert_difference('LunchList.count') do
      post :create, :lunch_list => @lunch_list.attributes
    end

    assert_redirected_to lunch_list_path(assigns(:lunch_list))
  end

  test "should show lunch_list" do
    get :show, :id => @lunch_list.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lunch_list.to_param
    assert_response :success
  end

  test "should update lunch_list" do
    put :update, :id => @lunch_list.to_param, :lunch_list => @lunch_list.attributes
    assert_redirected_to lunch_list_path(assigns(:lunch_list))
  end

  test "should destroy lunch_list" do
    assert_difference('LunchList.count', -1) do
      delete :destroy, :id => @lunch_list.to_param
    end

    assert_redirected_to lunch_lists_path
  end
end
