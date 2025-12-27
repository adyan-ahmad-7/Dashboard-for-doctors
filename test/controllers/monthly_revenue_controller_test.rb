require "test_helper"

class MonthlyRevenueControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get monthly_revenue_index_url
    assert_response :success
  end
end
