class QuizQuestion < ApplicationRecord
  belongs_to :requested_user, class_name: "User", optional: true
  has_many :quiz_results
  # 他の関連付けや設定
end