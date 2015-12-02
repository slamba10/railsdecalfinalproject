class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
    # unless @user == current_user
    #   redirect_to :back, :alert => "Access denied."
    # end
  end

  def new
		@team = Team.new
	end

	def create
		@team = Team.create team_params
		@team.save
		redirect_to teams_path
	end

  def team_params
    params.require(:team).permit(:name)
  end


end
