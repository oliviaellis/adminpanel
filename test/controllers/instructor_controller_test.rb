require 'test_helper'

class InstructorControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get instructor_new_url
    assert_response :success
  end

  test "should get index" do
    get instructor_index_url
    assert_response :success
  end

end
