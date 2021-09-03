class Philosopher < ApplicationRecord
  belongs_to :team
  validates :name, presence: true


  def team_name=(name)
    self.team = Team.find_or_create_by(name:name)
  end

  def team_name
    self.team.name
  end

    # Set the task's favorite setting to true and save the task
    def favorite!
      self.favorite = true
      self.save!
    end
  
    # Set the task's favorite setting to false and save the task
    def unfavorite!
      self.favorite = false
      self.save!
    end
end
