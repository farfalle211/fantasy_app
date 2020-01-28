class Api::TeamsController < ApplicationController
  def index
    @teams = Team.all
    render 'index.json.jbuilder'
  end

  def create
    @team = Team.new(
                      name: params[:name],
                      city: params[:city],
                      division_id: params[:division_id],
                      conference_id: params[:conference_id]
                    )

    if @team.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @team.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @team = Team.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @team = Team.find(params[:id])

    @team.name = params[:name] || @team.name
    @team.city = params[:city] || @team.city
    @team.division_id = params[:division_id] || @team.division_id
    @team.conference_id = params[:conference_id] || @team.conference_id

    if @team.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @team.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    render json: {message: "Team Successfully Deleted"}
  end
end
