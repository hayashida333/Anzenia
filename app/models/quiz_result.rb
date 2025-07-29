class QuizResult < ApplicationRecord
  belongs_to :user
  belongs_to :quiz_question

  validates :correct, inclusion: { in: [true, false] }
end
