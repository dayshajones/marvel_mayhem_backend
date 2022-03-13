class CharactersController < ApplicationController
    
    def index
        characters = Character.all
        render json: characters
    end

    def create 
      character = Character.new(character_params)
      if character.save 
          render json: character
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
        params.require(:character).permit(:name, :description, :thumbnail, :team_id)
    end

end
