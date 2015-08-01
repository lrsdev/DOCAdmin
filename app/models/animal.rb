class Animal < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  validates :blurb, presence: true, length: { maximum: 140 }
  validates :guidelines, presence: true, length: { maximum: 140 }
  validates :target, presence: true
  validates :ext_url, presence: true

  has_many :reports

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_presence :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
