class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def show
        @users = User.find(params[:id])
        render json: @users
    end

    def create
        @user = User.new(user_params)
        #User.new(params) is mass assignment. This is bad. Don't do this
        if @user.save
            render json: @user
        else 
            render json: @user.errors.full_messages, status: 422
        end
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            render json: @user
        else
            render json: @user.errors.full_messages, status: 422
        end
    end


    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: @user 
    end

    private

    def user_params
        params.require(:user).permit(:username)
    end

end
