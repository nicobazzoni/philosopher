class Branch < ApplicationRecord
    has_many :philosophers
    
end
def philosopher_id
    self.object.philosopher.name
  end