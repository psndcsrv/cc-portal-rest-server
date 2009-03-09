require 'test_helper'

class ClassWordsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_words)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_word" do
    assert_difference('ClassWord.count') do
      post :create, :class_word => { }
    end

    assert_redirected_to class_word_path(assigns(:class_word))
  end

  test "should show class_word" do
    get :show, :id => class_words(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => class_words(:one).to_param
    assert_response :success
  end

  test "should update class_word" do
    put :update, :id => class_words(:one).to_param, :class_word => { }
    assert_redirected_to class_word_path(assigns(:class_word))
  end

  test "should destroy class_word" do
    assert_difference('ClassWord.count', -1) do
      delete :destroy, :id => class_words(:one).to_param
    end

    assert_redirected_to class_words_path
  end
end
