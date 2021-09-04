class PhilosopherSerializer < ActiveModel::Serializer
  attributes  :id, :name, :favorite, :idea, :notes, :image, :section
end
