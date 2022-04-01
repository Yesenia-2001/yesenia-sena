require "test_helper"

class Programa::AreaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get programa_area_index_url
    assert_response :success
  end
end
