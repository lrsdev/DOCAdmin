class DogStatus < ActiveRecord::Base
  after_save do
    location.update_attribute(:updated_at, Time.now)
  end

  belongs_to :location
  validates :status, :presence => true
  validates :guidelines, :presence => true
  enum status: [:off_lead, :on_lead, :no_dogs]
end
