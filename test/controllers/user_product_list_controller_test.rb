require 'test_helper'

class UserProductListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_product_list_index_url
    assert_response :success
  end

end
