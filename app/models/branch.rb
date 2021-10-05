class Branch < ApplicationRecord
    has_many :philosophers
    belongs_to :user
end
def philosopher_id
    self.object.philosopher.name
  end