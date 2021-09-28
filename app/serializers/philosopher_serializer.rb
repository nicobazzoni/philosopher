class PhilosopherSerializer < ActiveModel::Serializer

  attributes :id, :name, :image, :idea, :branch_id
  belongs_to :branches 
end

