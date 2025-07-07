# app/controllers/admin/quiz_results_controller.rb
module Admin
  class QuizResultsController < ApplicationController
    layout "admin"

    def index
      @quiz_results = QuizResult.includes(:user, :quiz_question).order(created_at: :desc).page(params[:page]).per(10)

      # ユーザーごとの最新のクイズ結果だけをマークしたい
      @first_quiz_results_by_user = QuizResult
  .order(:created_at)
  .group_by(&:user_id)
  .transform_values { |results| results.min_by(&:created_at).id }
    end
  end
end