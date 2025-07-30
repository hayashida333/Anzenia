# frozen_string_literal: true

class AddRequestedUserIdToQuizQuestions < ActiveRecord::Migration[7.2]
  def change
    add_column :quiz_questions, :requested_user_id, :integer
    add_index :quiz_questions, :requested_user_id
  end
end
