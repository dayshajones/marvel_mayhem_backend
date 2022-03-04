class CharacterSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :thumbnail
end
