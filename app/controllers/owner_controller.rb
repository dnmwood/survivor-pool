class OwnerController < ApplicationController
  attr_accessor

  def index
    @owners = Owner.all
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def edit
    @owner = Owner.find(params[:id])
  end

  def update
    @owner = Owner.find(params[:id])

    if @owner.update_attributes(owner_params)
      redirect_to owner_path(@owner)
    else
      render :edit
    end
  end

  def create
    @owner = Owner.new(owner_params)

    if owner.save
      redirect_to show_url, notice: "You have created an owner!"
    end
  end

  def new
    @owner = Owner.new
    @owner.save
  end

  def destroy
    @owner = Owner.find(params[:id]).delete
      if @owner.delete
    redirect_to root_url
  end
end

  private

  def owner_params
    params.require(:owner).permit(:name, :total_points, :season_victories, :hidden_idols, :successful_immunities, :individual_immunities, :tribal_immunities, :rewards, :days, :jury_members, :winners, :second_placers, :third_placers, :quitters, :med_evacs, :season_favourites, :image_url)
  end
end
