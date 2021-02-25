class UsersController < ApplicationController
  
  def index 
    users = User.all
    
    render json: users

  end

  def show
    user = User.find_by(id: params[:id])
    render json: { user: current_user }
  end

  def create
    user = User.new(user_params)
    if user.save
      payload = {user_id: user.id}
      token = encode_token(payload)
      render json: { user: user, jwt: token} 
    else
      render json: { errorMessages: user.errors.messages }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.permit(:username, :password, :email)
  end
end
