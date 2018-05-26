class SessionsController < ApplicationController
    def create
        user= User.where(email: params[:email]).first

        if user.valid_password?(params[:password])
            user.save()
            render json: user.as_json(only: [:email, :authentication_token]), status: :created
        else
            head(:unauthorized)
        end
    end
end

    