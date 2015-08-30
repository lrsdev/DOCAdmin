ActiveAdmin.register Location do
  actions :all, except: [:destroy]
  filter :name
  filter :dog_statuses_status, label: 'Dog Status', as: :select, collection: DogStatus.statuses

  permit_params :category, :name, :animal_blurb, :image, :latitude, :longitude, :active,
    dog_statuses_attributes: [:location_id, :status, :guidelines]

  # Converts lat/long form fields to geographic object before commiting object to database.
  before_create do |l|
    l.geolocation = RGeo::Geographic.spherical_factory(:srid => 4326).point(l.longitude, l.latitude)
  end

  before_update do |l|
    l.geolocation = RGeo::Geographic.spherical_factory(:srid => 4326).point(l.longitude, l.latitude)

    # Check to see if new dog status matches the last stored status. Don't save it if it does.
    # This is a work around that solves a problem where editing a location would create a new
    # dog status even if it didn't change. This is because we're not using the default active
    # admin behaviour for nested form attributes, and not allowing dog statuses to be mutable.
    # This is to maintain a history of dog statuses for a location, without users having to be
    # aware of this. Although this is a little hacky, it's a large improvement from the usability
    # standpoint. The default behaviour is to show
    current_status = Location.find(l.id).dog_statuses.last
    new_status = l.dog_statuses.last

    if(current_status.guidelines == new_status.guidelines and
       current_status.status == new_status.status)
      new_status.destroy
    end
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
  # WKT output into something more editable.
  form do |f|
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

    # Create a new dog status object by default. Gets around the default active admin behaviour of adding
    # buttons to create a new status.
    f.object.dog_statuses.new if f.object.dog_statuses.empty? 
    f.inputs "Dog Information", for: [:dog_statuses, f.object.dog_statuses.last] do |ds|
      ds.input :status, as: :select, collection: DogStatus.statuses.keys
      ds.input :guidelines, as: :text
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
      row 'Previous Dog Statuses' do
        li link_to "Click to view all previous", admin_location_dog_statuses_path(location_id: l.id)
      end
      row :image do
        image_tag l.image.url(:medium)
      end
    end
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end

ActiveAdmin.register DogStatus do
  actions :all
  belongs_to :location
end
