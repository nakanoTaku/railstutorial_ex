class Retweet < ApplicationRecord
  belongs_to :micropost, counter_cache: :retweets_count
  belongs_to :user
end
