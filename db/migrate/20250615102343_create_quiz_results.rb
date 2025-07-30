# frozen_string_literal: true

class CreateQuizResults < ActiveRecord::Migration[7.2]
  def change
    create_table :quiz_results do |t|
      t.references :user, null: false, foreign_key: true
      t.references :quiz_question, null: false, foreign_key: true
      t.boolean :correct

      t.timestamps
    end
  end
end
