require 'test_helper'

class ProvidersControllerTest < ActionController::TestCase
  setup do
    @provider = providers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:providers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create provider" do
    assert_difference('Provider.count') do
      post :create, provider: { address: @provider.address, city_id: @provider.city_id, cnpj: @provider.cnpj, data_record: @provider.data_record, description: @provider.description, district: @provider.district, email: @provider.email, name: @provider.name, phone_one: @provider.phone_one, phone_two: @provider.phone_two, state: @provider.state }
    end

    assert_redirected_to provider_path(assigns(:provider))
  end

  test "should show provider" do
    get :show, id: @provider
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @provider
    assert_response :success
  end

  test "should update provider" do
    patch :update, id: @provider, provider: { address: @provider.address, city_id: @provider.city_id, cnpj: @provider.cnpj, data_record: @provider.data_record, description: @provider.description, district: @provider.district, email: @provider.email, name: @provider.name, phone_one: @provider.phone_one, phone_two: @provider.phone_two, state: @provider.state }
    assert_redirected_to provider_path(assigns(:provider))
  end

  test "should destroy provider" do
    assert_difference('Provider.count', -1) do
      delete :destroy, id: @provider
    end

    assert_redirected_to providers_path
  end
end
