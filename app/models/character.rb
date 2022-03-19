class Character < ApplicationRecord
    belongs_to :team

    scope :sort_by_teams, -> {order(team_id: :desc)}
end
