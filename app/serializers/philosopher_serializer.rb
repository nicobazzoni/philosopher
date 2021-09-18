class PhilosopherSerializer < ActiveModel::Serializer
  attributes  :id, :name, :favorite, :notes, :status, :image, :username
  has_many :thoughts
 
  def username
   self.object.user.username
  end
end

