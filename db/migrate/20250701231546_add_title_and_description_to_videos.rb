# frozen_string_literal: true

class AddTitleAndDescriptionToVideos < ActiveRecord::Migration[7.2]
  def change
    add_column :videos, :title, :string
    add_column :videos, :description, :text
  end
end
