class Location < ActiveRecord::Base
  attr_accessor :latitude, :longitude

  has_many :reports, :dependent => :destroy
  has_many :dog_statuses, :dependent => :destroy
  accepts_nested_attributes_for :dog_statuses
  has_many :accesses
  validates :name, :presence => true
  validates :category, :presence => true
  validates :animal_blurb, :presence => true, length: { maximum: 140 }
  validates :geolocation, :presence => true

  enum category: [ :beach, :track, :park ]

  has_attached_file :image, :styles => { :medium => "640x360#", :thumb => "100x100#" }
  validates_attachment_presence :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
