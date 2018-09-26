require 'test_helper'

class RegistrationsControllerTest < ActionDispatch::IntegrationTest
  test "should get devise" do
    get registrations_devise_url
    assert_response :success
  end

end
