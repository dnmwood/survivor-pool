class PlayersController < ApplicationController
  attr_accessor

  def index
    @team = Team.find(params[:team_id])
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])

    if @player.update_attributes(player_params)
      redirect_to player_path(@player)
    else
      render :edit
    end
  end

  def create
    @team = Team.find(params[:team_id])
    @player = Player.new(player_params)

    @player.team_id = @team.id

    if @player.save
      redirect_to root_url, notice: "You have created an owner!"
    end
  end

  def new
    @team = Team.find(params[:team_id])
    @player = Player.new
    @player.save
  end

  def destroy
    @player = Player.find(params[:id]).delete
      if @player.delete
    redirect_to root_url
  end
end

  private

  def player_params
    params.require(:player).permit(:name, :total_points, :season_victories, :hidden_idols, :successful_immunities, :individual_immunities, :tribal_immunities, :rewards, :days, :jury_members, :winners, :second_placers, :third_placers, :quitters, :med_evacs, :season_favourites, :image_url)
  end
end
