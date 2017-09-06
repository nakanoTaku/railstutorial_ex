class LikesController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])

    Like.create(user_id: micropost.user_id, micropost_id: micropost.id)
    redirect_to root_path
  end

  def destroy
    Like.find_by(user_id: micropost.user_id, micropost_id: micropost.id).destroy
    redirect_to root_path
  end
end
