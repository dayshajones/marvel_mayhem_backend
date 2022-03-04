class TeamsController < ApplicationController

    def index
        teams = Team.all
        render json: TeamSerializer.new(teams)
    end

    def create
        team = Team.create(team_params)
        render json: TeamSerializer.new(team)
    end

    private

    def team_params
        params.require(:team).permit(:name)
    end
end
