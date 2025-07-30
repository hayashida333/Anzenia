# frozen_string_literal: true

class AddGenderToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :gender, :string
  end
end
