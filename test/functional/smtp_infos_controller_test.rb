require 'test_helper'

class SmtpInfosControllerTest < ActionController::TestCase
  setup do
    @smtp_info = smtp_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:smtp_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create smtp_info" do
    assert_difference('SmtpInfo.count') do
      post :create, :smtp_info => @smtp_info.attributes
    end

    assert_redirected_to smtp_info_path(assigns(:smtp_info))
  end

  test "should show smtp_info" do
    get :show, :id => @smtp_info.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @smtp_info.to_param
    assert_response :success
  end

  test "should update smtp_info" do
    put :update, :id => @smtp_info.to_param, :smtp_info => @smtp_info.attributes
    assert_redirected_to smtp_info_path(assigns(:smtp_info))
  end

  test "should destroy smtp_info" do
    assert_difference('SmtpInfo.count', -1) do
      delete :destroy, :id => @smtp_info.to_param
    end

    assert_redirected_to smtp_infos_path
  end
end
