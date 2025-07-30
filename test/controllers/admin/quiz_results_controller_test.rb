# frozen_string_literal: true

require 'test_helper'

module Admin
  class QuizResultsControllerTest < ActionDispatch::IntegrationTest
    test 'should get index' do
      get admin_quiz_results_index_url
      assert_response :success
    end
  end
end
