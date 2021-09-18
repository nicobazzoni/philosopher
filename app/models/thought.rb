class Thought < ApplicationRecord
  belongs_to :philosopher
  
  def philosopher_name
    self.philosopher ? philosopher.name  : ""
  end
end
