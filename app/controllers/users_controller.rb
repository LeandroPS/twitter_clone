class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    #tentativa follow
    def follow
        @follows  = current_user.follow.new(follows_id)

        if @follows.save
            redirect_to root_path, notice: 'Você está seguindo o usuário'
        else
            redirect_to root_path, alert: 'Você não está seguindo o usuário'
        end
    end
end
