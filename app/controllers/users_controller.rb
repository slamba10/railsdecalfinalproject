class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    # unless @user == current_user
    #   redirect_to :back, :alert => "Access denied."
    # end
  end

  def add
    @user = current_user
    @user.team_id = params[:id]
    @user.save
    redirect_to :back
  end


end
