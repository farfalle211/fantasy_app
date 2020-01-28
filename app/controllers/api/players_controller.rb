class Api::PlayersController < ApplicationController
  def index
    @players = Player.all
    render 'index.json.jbuilder'
  end

  def create
    @player = Player.new(
                          name: params[:name],
                          position: params[:position],
                          team_id: params[:team_id]
                        )

    if @player.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @players.errors.full_messages}, status: :unprocessable_entity 
    end
  end

  def show
    # @player = Player.where(id: params[:id])
    @player = Player.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @player = Player.find(params[:id])
    
    @player.name = params[:name] || @player.name
    @player.position = params[:position] || @player.position
    @player.team_id = params[:team_id] || @player.team_id

    if @player.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @player.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    render json: {message: "Successfully removed player"}
  end
end
