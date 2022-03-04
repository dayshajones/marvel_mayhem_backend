class CharactersController < ApplicationController
    
    def index
        characters = Character.all
        render json: CharacterSerializer.new(characters)
    end

    def create
        character = Character.create(character_params)
        render json: CharacterSerializer.new(character)
    end

    private

    def character_params
        params.require(:character).permit(:name, :description, :thumbnail, :team_id)
    end

end
