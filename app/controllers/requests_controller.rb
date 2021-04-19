class RequestsController < ApplicationController

  def create
    @friend_request = Request.new(requesting_friend_id: current_user.id, requested_friend_id: params[:invitee])

    if @friend_request.save
        redirect_to root_path, notice: "Friend request sent!"
    else
        redirect_to root_path, status: :unprocessable_entity
    end
  end

  private

end
