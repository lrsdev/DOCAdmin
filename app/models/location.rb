class Location < ActiveRecord::Base
  attr_accessor :latitude, :longitude

  has_many :reports, :dependent => :destroy
  has_many :dog_statuses, :dependent => :destroy
  validates_presence_of :dog_statuses, :message => "At least one dog status is required"
  accepts_nested_attributes_for :dog_statuses, allow_destroy: true
  validates :name, :presence => true
  validates :category, :presence => true
  validates :region, :presence => true
  validates :animal_blurb, :presence => true
  validates :geolocation, :presence => true
  validates :image, :presence => true
  validates :dog_statuses, :presence => true
  validates :active, inclusion: { in: [true, false] }

  enum category: [ :beach, :track, :park ]
  enum region: [ "Southland", "Otago", "Canterbury", "Westland", "Marlborough", "Nelson", "Wellington",
    "Hawke's Bay", "New Plymouth", "Auckland"]

  has_attached_file :image, :styles => { :medium => "640x360#", :thumb => "100x100#" }
  validates_attachment_presence :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
