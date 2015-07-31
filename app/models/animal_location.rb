class AnimalLocation < ActiveRecord::Base
  belongs_to :animal
  belongs_to :location
end
