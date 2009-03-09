require 'test_helper'

class ClassActivitiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_activity" do
    assert_difference('ClassActivity.count') do
      post :create, :class_activity => { }
    end

    assert_redirected_to class_activity_path(assigns(:class_activity))
  end

  test "should show class_activity" do
    get :show, :id => class_activities(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => class_activities(:one).to_param
    assert_response :success
  end

  test "should update class_activity" do
    put :update, :id => class_activities(:one).to_param, :class_activity => { }
    assert_redirected_to class_activity_path(assigns(:class_activity))
  end

  test "should destroy class_activity" do
    assert_difference('ClassActivity.count', -1) do
      delete :destroy, :id => class_activities(:one).to_param
    end

    assert_redirected_to class_activities_path
  end
end
