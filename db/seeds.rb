# 既存のクイズデータ
QuizQuestion.create(
  question: 'プログラミング言語Rubyは誰によって作られましたか？',
  option1: '松本行弘',
  option2: 'リン・タスカ',
  option3: 'グイド・ヴァン・ロッサム',
  option4: 'ダグラス・クロックホフ',
  correct: 1
)

AdminUser.find_or_create_by!(email: 'portfolio@example.com') do |admin|
  admin.password = 'portfolio123'
  admin.password_confirmation = 'portfolio123'
end
