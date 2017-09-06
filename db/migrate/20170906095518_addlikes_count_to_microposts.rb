class AddlikesCountToMicroposts < ActiveRecord::Migration[5.0]
  def change
    add_column :microposts, :likes_count, :integer
  end
end
