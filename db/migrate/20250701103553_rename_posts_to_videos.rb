class RenamePostsToVideos < ActiveRecord::Migration[7.2]
  def change
    rename_table :posts, :videos
  end
end
