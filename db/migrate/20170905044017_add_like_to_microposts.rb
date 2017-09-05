class AddLikeToMicroposts < ActiveRecord::Migration[5.0]
  def change
    add_column :microposts, :like, :boolean, default: false
  end
end
