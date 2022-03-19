class Team < ApplicationRecord
    has_many :characters

    scope :latest_team, -> {order(created_at: :desc)}
end
