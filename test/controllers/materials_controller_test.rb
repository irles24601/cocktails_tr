require 'test_helper'

class MaterialsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get materials_create_url
    assert_response :success
  end

end
