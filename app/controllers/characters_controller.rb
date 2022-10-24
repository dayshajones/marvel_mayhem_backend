class CharactersController < ApplicationController
    
  def index
      characters = Character.all.sort_by_teams
      render json: CharacterSerializer.new(characters)
  end

  def create 
    character = Character.new(character_params)
    if character.save 
        render json: CharacterSerializer.new(character)
    else
        render json: {error: "Couldnt be saved"}
    end
end

def update
  character = Character.find_by_id(params[:id])
  if character.update(character_params)
      render json: character
  else
      render json: {error: "Couldn't Update"}
  end
end


def destroy
  character = Character.find_by_id(params[:id])
  character.destroy 
  render json: {message: "Successfully deleted #{character.name}"}
end


  private

  def character_params
      params.require(:character).permit(:name, :description, :thumbnail, :team_id, :team)
  end

end