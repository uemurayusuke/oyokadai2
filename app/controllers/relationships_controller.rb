class RelationshipsController < ApplicationController
  def create
  end

  def destroy
  end

 def followings
    user = User.find(params[:user_id])
		@users = user.followings
 end

  def followers
    user = User.find(params[:user_id])
		@users = user.followers
  end
end
