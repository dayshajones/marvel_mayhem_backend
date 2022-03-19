class CharacterSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :thumbnail, :team_id, :team
end
