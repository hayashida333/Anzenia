require 'test_helper'

class QuizQuestionsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get quiz_questions_index_url
    assert_response :success
  end

  test 'should get show' do
    get quiz_questions_show_url
    assert_response :success
  end
end
