class AddRetweetsCountToMicroposts < ActiveRecord::Migration[5.0]
  def change
    add_column :microposts, :retweet_count, :integer
  end
end
