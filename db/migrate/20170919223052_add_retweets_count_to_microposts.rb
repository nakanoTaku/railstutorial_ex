class AddRetweetsCountToMicroposts < ActiveRecord::Migration[5.0]
  def change
    add_column :microposts, :retweets_count, :integer
  end
end
