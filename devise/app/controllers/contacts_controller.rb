class ContactsController < ApplicationController
    
    def index
    @user= User.where(email: params[:email]).first
       if @user.authentication_token == (params[:token])
            @contacts= Contact.all
            render json: @contacts, status: :ok 
        else
            head(:unauthorized)
        end
    end
    def create
        @contact= Contact.new(contact_params)
        @contact.save
        render json: @contact, status: :created
    end
    def destroy
        
        @contact= Contact.where(id: params[:id]).first
        @contact.destroy
    end
    def update
    end
    private

    def contact_params
        params.permit(:first_name, :last_name, :email)
    end
end
