class PhilosopherSerializer < ActiveModel::Serializer

  attributes :id, :name, :image, :idea, :branch_id, :username
  belongs_to :branches 
  def username
    self.object.user.username
  end
end

