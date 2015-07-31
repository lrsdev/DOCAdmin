class Animal < ActiveRecord::Base
  has_many :animal_locations
  has_many :animals, :through => :animal_locations
  has_many :reports

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_presence :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
