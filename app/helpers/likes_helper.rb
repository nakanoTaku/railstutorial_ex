module LikesHelper
  def like_user(user_id, micropost_id)
    Like.find_by(user_id: user_id, micropost_id: micropost_id)
  end
end
