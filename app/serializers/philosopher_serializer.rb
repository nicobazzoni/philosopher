class PhilosopherSerializer < ActiveModel::Serializer
  attributes :id, :name, :idea, :image, :team_name
end
