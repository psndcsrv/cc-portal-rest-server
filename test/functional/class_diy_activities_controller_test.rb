require 'test_helper'

class ClassDiyActivitiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_diy_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_diy_activity" do
    assert_difference('ClassDiyActivity.count') do
      post :create, :class_diy_activity => { }
    end

    assert_redirected_to class_diy_activity_path(assigns(:class_diy_activity))
  end

  test "should show class_diy_activity" do
    get :show, :id => class_diy_activities(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => class_diy_activities(:one).to_param
    assert_response :success
  end

  test "should update class_diy_activity" do
    put :update, :id => class_diy_activities(:one).to_param, :class_diy_activity => { }
    assert_redirected_to class_diy_activity_path(assigns(:class_diy_activity))
  end

  test "should destroy class_diy_activity" do
    assert_difference('ClassDiyActivity.count', -1) do
      delete :destroy, :id => class_diy_activities(:one).to_param
    end

    assert_redirected_to class_diy_activities_path
  end
end
