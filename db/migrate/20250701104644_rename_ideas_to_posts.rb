# frozen_string_literal: true

class RenameIdeasToPosts < ActiveRecord::Migration[7.2]
  def change
    rename_table :ideas, :posts
  end
end
