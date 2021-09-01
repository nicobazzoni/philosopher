class PhilosopherSerializer < ActiveModel::Serializer
  attributes :id, :name, :idea, :notes, :image, :team_name
end
