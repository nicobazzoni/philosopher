class Philosopher < ApplicationRecord
  belongs_to :team
  validates :name, presence: true


  def team_name=(name)
    self.team = team.find_or_create_by(name: name)
  end

  def team_name
    self.team.name
  end
end
