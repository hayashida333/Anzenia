module Admin
  class QuizQuestionsController < ApplicationController
    before_action :set_quiz_question, only: %i[show edit update destroy answer]
    before_action :set_users, only: %i[new edit create update]

    def index
      @quiz_questions = QuizQuestion.includes(:requested_user).order(created_at: :desc).page(params[:page]).per(10)
    end

    def show; end

    def answer
      selected = params[:selected_option].to_i
      correct = (selected == @quiz_question.correct)

      QuizResult.create!(
        user: current_user,
        quiz_question: @quiz_question,
        correct: correct
      )

      if correct
        flash[:notice] = '正解です！'
      else
        flash[:alert] = "不正解です。正解は「#{@quiz_question.send("option#{@quiz_question.correct}")}」です。動画をもう一度確認して下さい。"
      end

      redirect_to admin_quiz_question_path(@quiz_question)
    end

    def new
      @quiz_question = QuizQuestion.new
    end

    def create
      @quiz_question = QuizQuestion.new(quiz_question_params)
      if @quiz_question.save
        redirect_to admin_quiz_question_path(@quiz_question), notice: 'クイズを作成しました'
      else
        render :new
      end
    end

    def edit; end

    def update
      if @quiz_question.update(quiz_question_params)
        redirect_to admin_quiz_questions_path, notice: 'クイズを更新しました'
      else
        render :edit
      end
    end

    def destroy
      @quiz_question.destroy
      redirect_to admin_quiz_questions_path, notice: '削除しました'
    end

    private

    def set_users
      @users = User.order(:last_name, :first_name)
    end

    def set_quiz_question
      @quiz_question = QuizQuestion.find(params[:id])
    end

    def quiz_question_params
      params.require(:quiz_question).permit(
        :question,
        :option1,
        :option2,
        :option3,
        :option4,
        :correct,
        :requested_user_id
      )
    end
  end
end
