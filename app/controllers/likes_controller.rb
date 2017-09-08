class LikesController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])
    Like.create(user_id: micropost.user_id, micropost_id: micropost.id)
    @micropost = Micropost.find(params[:micropost_id])

    respond_to do |format|
      format.html { redirect_to root_path}
      format.js
    end
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    Like.find_by(user_id: micropost.user_id, micropost_id: micropost.id).destroy
    @micropost = Micropost.find(params[:micropost_id])

    respond_to do |format|
      format.html { redirect_to root_path}
      format.js
    end
  end
end
