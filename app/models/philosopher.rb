class Philosopher < ApplicationRecord
  belongs_to :branch
  belongs_to :user
  def branch_name
    self.branch ? branch.name : ""
  end
end


