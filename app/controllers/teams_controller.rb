class TeamsController < ApplicationController

    def index
        teams = Team.all
        render json: TeamSerializer.new(teams)
    end

    def create
        team = Team.new(team_params)
        if team.save 
            render json: TeamSerializer.new(team)
        else
            render json: {error: "Couldnt be saved"}
        end
    end

    private

    def team_params
        params.require(:team).permit(:name)
    end
end