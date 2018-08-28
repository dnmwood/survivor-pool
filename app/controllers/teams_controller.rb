class TeamsController < ApplicationController

  def index
    @owner = Owner.find(params[:owner_id])
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])

    if @team.update_attributes(team_params)
      redirect_to team_path(@team)
    else
      render :edit
    end
  end

  def create
    @owner = Owner.find(params[:owner_id])
    @team = Team.new(team_params)

    @team.owner_id = @owner.id

    if @team.save
      redirect_to root_url, notice: "You have created a team!"
    end
  end

  def new
    @owner = Owner.find(params[:owner_id])
    @team = Team.new
    @team.save
  end

  def destroy
    @team = Team.find(params[:id]).delete
      if @team.delete
    redirect_to root_url
    end
  end

  private

  def team_params
    params.require(:team).permit(:name)
  end

end
