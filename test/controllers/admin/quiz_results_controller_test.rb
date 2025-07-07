require "test_helper"

class Admin::QuizResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_quiz_results_index_url
    assert_response :success
  end
end
