class CharactersController < ApplicationController
    
  def index
      characters = Character.all.sort_by_teams
      render json: CharacterSerializer.new(characters)
  end

  # def show
  #   character = Character.find_by_id(params[:id])
  #   render json: character
  # end

  def create 
    character = Character.new(character_params)
    if character.save 
        render json: CharacterSerializer.new(character)
    else
        render json: {error: "Couldnt be saved"}
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