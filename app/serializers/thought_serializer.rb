class ThoughtSerializer < ActiveModel::Serializer
    attributes :id, :idea, :category
    belongs_to :philosopher
end