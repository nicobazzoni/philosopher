class BranchSerializer < ActiveModel::Serializer
  
  attributes :name, :id
  has_many :philosophers
end

def username
  self.object.user.username
 end