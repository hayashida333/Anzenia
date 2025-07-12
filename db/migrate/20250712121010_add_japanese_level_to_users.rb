class AddJapaneseLevelToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :japanese_level, :string
  end
end
