class TeamSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :characters
end
