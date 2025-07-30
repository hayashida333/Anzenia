# frozen_string_literal: true

class AddRemarksToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :remarks, :text
  end
end
