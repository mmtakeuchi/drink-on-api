class UsersController < ApplicationController
  
  def profile
    user = User.find(params[:id])
    render json: { user: current_user }
  end

  def create
    user = User.new(user_params)
    if user.save
      token = issue_token(user)
      render json: { user: {id: user.id, username: user.username}, token: token} 
    else
      render json: { errorMessages: user.errors.messages }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.permit(:name, :password, :email)
  end
end
