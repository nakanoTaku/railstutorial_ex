class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validate :picture_size

  has_many :likes, dependent: :destroy
  has_many :retweets, dependent: :destroy

  # いいねしたかしてないかを確認する
  def like_user(user_id)
    self.likes.find_by(user_id: user_id)
  end

  # シェア=リツイートしたかしてないか確認する
  def retweet_user(user_id)
    self.retweets.find_by(user_id: user_id)
  end

  # ユーザーのあいまい検索
  def self.search(search)
    if search
      where('content LIKE ?', "%#{search}%")
    else
      all
    end
  end

private

  # アップロードされた画像のサイズをバリデーションする
  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end
end
