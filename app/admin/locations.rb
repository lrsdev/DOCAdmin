ActiveAdmin.register Location do
  actions :all, except: [:destroy]
  filter :name
  #filter :current_dog_status_status, label: 'Dog Status', as: :select, collection: DogStatus.statuses

  permit_params :category, :name, :animal_blurb, :image, :latitude, :longitude, :active,
    dog_statuses_attributes: [:location_id, :status, :guidelines, :id, :_destroy]

  # Converts lat/long form fields to geographic object before commiting object to database.
  before_create do |l|
    l.geolocation = RGeo::Geographic.spherical_factory(:srid => 4326).point(l.longitude, l.latitude)
  end

  before_update do |l|
    l.geolocation = RGeo::Geographic.spherical_factory(:srid => 4326).point(l.longitude, l.latitude)
  end

  index do
    column :name
    column :category
    column :active
    column "Dog Status" do |location|
      location.dog_statuses.last.status
    end
    actions 
  end

  # Form. Conditionally add geolocation values to lat/long fields. Required to manipulate geolocations standard
  # WKT output into seperately editable lat/long fields.
  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs "Location Details" do
      f.input :name
      f.input :active, as: :select
      f.input :category, as: :select, collection: Location.categories.keys
      f.input :animal_blurb
      if f.object.new_record?
        f.input :latitude, :as => :number
        f.input :longitude, :as => :number
      else
        f.input :latitude, :as => :number, :input_html => { :value => f.object.geolocation.y }
        f.input :longitude, :as => :number, :input_html => { :value => f.object.geolocation.x }
      end
      f.input :image, :as => :file, :hint => f.object.image.present? \
        ? image_tag(f.object.image.url(:medium))
        : content_tag(:span, "no image uploaded yet")
    end
    f.object.dog_statuses.new if f.object.new_record?
    f.inputs do
      f.has_many :dog_statuses, heading: 'Dog Details' do |ds|
        if ds.object.new_record?
          ds.input :status, as: :select, collection: DogStatus.statuses.keys
          ds.input :guidelines, as: :text
        else
          ds.input :created_at, as: :string, :input_html => { :readonly=>true, :disabled=>true }
          ds.input :status, as: :select, collection: DogStatus.statuses.keys, :input_html => { :readonly=>true, :disabled=>true }
          ds.input :guidelines, as: :string, :input_html => { :readonly=>true, :disabled=>true }
        end
      end
    end
    f.actions
  end

  show do |l|
    attributes_table do
      row :name
      row :category
      row :geolocation
      row :animal_blurb
      row 'Current Dog Status' do
        l.dog_statuses.last.status
      end
      row 'Current Dog Guidelines' do
        l.dog_statuses.last.guidelines
      end
      row :image do
        image_tag l.image.url(:medium)
      end
    end
  end
end

# 
ActiveAdmin.register DogStatus do
  actions :all, except: [:destroy, :new]
  belongs_to :location
  filter :location
end
