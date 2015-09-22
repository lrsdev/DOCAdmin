class Animal < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  validates :blurb, presence: true
  validates :guidelines, presence: true
  validates :active, inclusion: { in: [true, false] }
  validates :ext_url, presence: true
  validates :image, presence: true

  has_many :reports

  has_attached_file :image, :styles => { :medium => "640x360#", :thumb => "100x100#" }
  validates_attachment_presence :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
