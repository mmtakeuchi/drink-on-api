class SessionsController < ApplicationController
    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            payload = {user_id: user.id}
            token = encode_token(payload)
            render json: { user: user, jwt: token }
        else
            render json: {status: "error", message: "We don't find such an user according to your information,please try again."}
        end
    end
                                
   
    def auto_login
        if session_user
            render json: session_user
        else
            render json: {errors: "No User Logged In."}
        end     
    end
end