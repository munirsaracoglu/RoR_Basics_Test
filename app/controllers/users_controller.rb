class UsersController < ApplicationController
    def list
        @users = Hometask.all
    end

    def show
        @user = Hometask.find(params[:id])
    end   
end
