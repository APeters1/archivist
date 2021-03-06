require 'test_helper'

class VariablesControllerTest < ActionController::TestCase
  setup do
    @user = users :User_1
    sign_in @user
    @variable = variables(:one)
    @dataset = datasets(:one)
  end

  test "should get index" do
    get :index, format: :json, dataset_id: @dataset.id
    assert_response :success
    assert_not_nil assigns(:collection)
  end

  test "should create variable" do
    assert_difference('Variable.count') do
      post :create, format: :json, dataset_id: @dataset.id, variable: {dataset_id: @variable.dataset_id, label: @variable.label, name: 'v'+@variable.name, var_type: @variable.var_type}
    end

    assert_response :success
  end

  test "should show variable" do
    get :show, id: @variable, format: :json, dataset_id: @dataset.id
    assert_response :success
  end

  test "should update variable" do
    patch :update, format: :json, dataset_id: @dataset.id, id: @variable, variable: {dataset_id: @variable.dataset_id, label: @variable.label, name: @variable.name, var_type: @variable.var_type}
    assert_response :success
  end

  test "should destroy variable" do
    assert_difference('Variable.count', -1) do
      delete :destroy, format: :json, id: @variable, dataset_id: @dataset.id
    end

    assert_response :success
  end
end
