class UsersController < ApplicationController
    def list
        @users = Hometask.all
    end
    
end
