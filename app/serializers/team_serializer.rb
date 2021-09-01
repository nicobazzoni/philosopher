class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :philosophers
end
