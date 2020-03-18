require 'test_helper'

class WebappsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @webapp = webapps(:one)
  end

  test "should get index" do
    get webapps_url
    assert_response :success
  end

  test "should get new" do
    get new_webapp_url
    assert_response :success
  end

  test "should create webapp" do
    assert_difference('Webapp.count') do
      post webapps_url, params: { webapp: { element: @webapp.element, name: @webapp.name } }
    end

    assert_redirected_to webapp_url(Webapp.last)
  end

  test "should show webapp" do
    get webapp_url(@webapp)
    assert_response :success
  end

  test "should get edit" do
    get edit_webapp_url(@webapp)
    assert_response :success
  end

  test "should update webapp" do
    patch webapp_url(@webapp), params: { webapp: { element: @webapp.element, name: @webapp.name } }
    assert_redirected_to webapp_url(@webapp)
  end

  test "should destroy webapp" do
    assert_difference('Webapp.count', -1) do
      delete webapp_url(@webapp)
    end

    assert_redirected_to webapps_url
  end
end
