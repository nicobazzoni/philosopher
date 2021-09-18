class Philosopher < ApplicationRecord
has_many :thoughts
 
belongs_to :user
accepts_nested_attributes_for :thoughts 


end
