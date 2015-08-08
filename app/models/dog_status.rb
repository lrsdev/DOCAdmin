class DogStatus < ActiveRecord::Base
  belongs_to :location
  validates :status, :presence => true
  validates :guidelines, :presence => true
  enum status: [:off_lead, :on_lead, :no_dogs]
end
