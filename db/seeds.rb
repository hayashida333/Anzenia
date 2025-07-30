# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
QuizQuestion.create(
  question: 'プログラミング言語Rubyは誰によって作られましたか？',
  option1: '松本行弘',
  option2: 'リン・タスカ',
  option3: 'グイド・ヴァン・ロッサム',
  option4: 'ダグラス・クロックホフ',
  correct: 1
)
