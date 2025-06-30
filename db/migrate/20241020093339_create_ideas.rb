class Createposts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :picture
      t.date :published_at

      t.timestamps
    end
  end
end
