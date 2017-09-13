class RetwwetsController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])
    Retweet.create(user_id: current_user.id, micropost_id: micropost.id)

    redirect_to root_path
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    Retweet.find_by(user_id: current_user.id, micropost_id: micropost.id).destroy

    redirect_to root_path
  end
end
