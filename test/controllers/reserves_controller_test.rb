require 'test_helper'

class ReservesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get reserves_new_url
    assert_response :success
  end

end
