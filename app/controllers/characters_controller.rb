class CharactersController < ApplicationController
    
    def index
        characters = Character.all
        render json: CharacterSerializer.new(characters)
    end

    def create
        character = Character.create(character_params)
        if character.save
            render json: CharacterSerializer.new(character)
        else
            render json: {errors: character.errors.full_messages}
        end
    end

    private

    def character_params
        params.require(:character).permit(:name, :description, :thumbnail, :team_id)
    end

end
