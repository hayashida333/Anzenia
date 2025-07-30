# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.text :body
      t.string :youtube_url

      t.timestamps
    end
  end
end
