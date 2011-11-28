require 'test_helper'

class LeadsControllerTest < ActionController::TestCase
  setup do
    @lead = leads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lead" do
    assert_difference('Lead.count') do
      post :create, :lead => @lead.attributes
    end

    assert_redirected_to lead_path(assigns(:lead))
  end

  test "should show lead" do
    get :show, :id => @lead.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lead.to_param
    assert_response :success
  end

  test "should update lead" do
    put :update, :id => @lead.to_param, :lead => @lead.attributes
    assert_redirected_to lead_path(assigns(:lead))
  end

  test "should destroy lead" do
    assert_difference('Lead.count', -1) do
      delete :destroy, :id => @lead.to_param
    end

    assert_redirected_to leads_path
  end
end
