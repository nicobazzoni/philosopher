class PhilosopherSerializer < ActiveModel::Serializer
  attributes  :name, :likes, :idea, :notes, :image, :team_name
end
