class Shelter < ApplicationRecord
  has_many :pet
  validates_presence_of :name, :address, :city, :state, :zip

end
