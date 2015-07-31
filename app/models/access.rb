class Access < ActiveRecord::Base
  belongs_to :location
  validates :geolocation, presence: true
end
