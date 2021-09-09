class PhilosopherSerializer < ActiveModel::Serializer
  attributes  :id, :name, :favorite, :notes, :status, :image
  has_many :thoughts

  
end
