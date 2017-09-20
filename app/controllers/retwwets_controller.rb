class RetwwetsController < ApplicationController
  before_action :correct_user, only: [:edit, :update]

  def create
    micropost = Micropost.find(params[:micropost_id])
    Retweet.create(user_id: current_user.id, micropost_id: micropost.id)

    # 対象のマイクロポストのupdate_atを現在時刻にする
    Micropost.find(micropost.id).update_attribute(:updated_at, Time.now)

    redirect_to root_path
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    Retweet.find_by(user_id: current_user.id, micropost_id: micropost.id).destroy

    # 対象のマイクロポストのupdate_atを現在時刻にする
    Micropost.find(micropost.id).update_attribute(:updated_at, Time.now)

    redirect_to root_path
  end
end
