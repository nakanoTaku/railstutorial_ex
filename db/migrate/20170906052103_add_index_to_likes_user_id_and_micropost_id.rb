class AddIndexToLikesUserIdAndMicropostId < ActiveRecord::Migration[5.0]
  def change
    add_index :likes, [:user_id, :micropost_id], unique: true
  end
end
