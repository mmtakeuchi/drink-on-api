class SessionController < ApplicationController
    def create
        user = User.find_by(username: params[:username])
        if user&.authenticate(params[:password])
          token = issue_token(user)
          render json: {user: {id: user.id, username: user.username}, token: token}
        else
          render json: {errorMessages: {login: "username or password is wrong"} }
        end
      end
    
      def show
        if logged_in?
          render json: {user: {id: current_user.id, username: current_user.username} }
        else
          render json: {errorMessages: {session: "Please login to continue"}}
        end
      end
end