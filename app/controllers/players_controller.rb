class PlayersController < ApplicationController
  attr_accessor

  def index
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

    @player = player_info(@player)
    player_points = calc_player_points(@player)

    @player.points = player_points

    if @player.update_attributes(player_params)
      redirect_to root_url
    else
      render :edit
    end
  end

  def create
    @player = Player.new(player_params)

    owner = Owner.find(params[:owner_id])
    team = owner.teams.first

    @player.player_owner_id = owner.id
    @player.team_id = team.id

    @player.active = true

    if @player.save
      redirect_to root_url, notice: "You have created an owner!"
    end
  end

  def new
    @player = Player.new
    @player.team_id = params[:team]
    @player.player_owner_id = params[:owner]
  end

  def destroy
    @player = Player.find(params[:id]).delete
      if @player.delete
    redirect_to root_url
  end
end

  private

  def calc_player_points(pl)

    pl_params = params[:player]
    count = (pl_params[:hidden_immunities].to_i * 5) + (pl_params[:hidden_immunity_successes].to_i * 3) + (pl_params[:individual_immunities].to_i * 3) + (pl_params[:tribal_immunities].to_i * 3) + (pl_params[:rewards].to_i * 3) + (pl_params[:days].to_i)

    if pl.jury_member == true
      count += 3
    end

    if pl.winner == true
      count += 25
    end

    if pl.second_place == true
      count += 15
    end

    if pl.third_place == true
      count += 10
    end

    if pl.quitter == true
      count -= 10
    end

    if pl.medical_evac == true
      count += 5
    end

    if pl.season_favourite == true
      count += 10
    end

    return count
  end

  def player_info(pl)
    prms = params[:player]

    if prms[:jury_member] == "1"
      pl.jury_member = true
    else
      pl.jury_member = false
    end

    if prms[:active] == "1"
      pl.active = true
    else
      pl.active = false
    end

    if prms[:winner] == "1"
      pl.winner = true
    else
      pl.winner = false
    end

    if prms[:second_place] == "1"
      pl.second_place = true
    else
      pl.second_place = false
    end

    if prms[:third_place] == "1"
      pl.third_place = true
    else
      pl.third_place = false
    end

    if prms[:medical_evac] == "1"
      pl.medical_evac = true
    else
      pl.medical_evac = false
    end

    if prms[:quitter] == "1"
      pl.quitter = true
    else
      pl.quitter = false
    end

    if prms[:season_favourite] == "1"
      pl.season_favourite = true
    else
      pl.season_favourite = false
    end

    return pl
  end

  def player_params
    params.require(:player).permit(:name, :description, :total_points, :season_victories, :hidden_idols, :successful_immunities, :individual_immunities, :tribal_immunities, :rewards, :days, :jury_members, :winners, :second_placers, :third_placers, :quitters, :med_evacs, :season_favourites, :player_image_url)
  end
end
