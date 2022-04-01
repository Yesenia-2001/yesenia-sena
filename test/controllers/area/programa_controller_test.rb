require "test_helper"

class Area::ProgramaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get area_programa_index_url
    assert_response :success
  end
end
