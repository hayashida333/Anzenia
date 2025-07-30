# frozen_string_literal: true

# app/controllers/admin/quiz_results_controller.rb
module Admin
  class QuizResultsController < ApplicationController
    layout 'admin'

    def index
      @quiz_results = QuizResult.includes(:user, :quiz_question).order(created_at: :desc).page(params[:page]).per(10)

      # 各ユーザーにとって最も古い（最初の）クイズ結果の ID を特定
      @first_quiz_results_by_user = QuizResult
                                    .select('MIN(id) AS id, user_id') # 最初のIDを取得（created_atが早いもの）
                                    .group(:user_id)
                                    .pluck(:user_id, :id)
                                    .to_h
    end
  end
end
