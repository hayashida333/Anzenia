# frozen_string_literal: true

class User < ApplicationRecord
  # Devise modules...
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  validates :gender, inclusion: {
    in: %w[男性 女性 その他 未設定],
    message: 'は選択肢から選んでください'
  }

  has_many :quiz_results

  def full_name
    "#{last_name} #{first_name}"
  end
end
