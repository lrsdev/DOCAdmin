class DogStatus < ActiveRecord::Base
  after_save do
    location.update_attribute(:updated_at, Time.now)
  end

  before_destroy do
    location_has_status?
  end

  belongs_to :location
  validates :status, :presence => true
  validates :guidelines, :presence => true
  enum status: [:off_lead, :on_lead, :no_dogs]

  def location_has_status?
    errors.add(:base, 'Location must have one dog status') if location.dog_statuses.count == 1
    return false
  end
end
