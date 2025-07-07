class User < ApplicationRecord
  # Devise modules...
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :gender, inclusion: { in: [ "男", "女" ], message: "は男または女を選んでください" }
  has_many :quiz_results

  def full_name
    "#{last_name} #{first_name}"
  end
end
