ActiveAdmin.register Location do
  filter :name
  filter :dog_statuses

  permit_params :category, :name, :animal_blurb, :image, :latitude, :longitude,
    dog_statuses_attributes: [:location_id, :status, :guidelines]

  before_create do |l|
    l.geolocation = RGeo::Geographic.spherical_factory(:srid => 4326).point(l.longitude, l.latitude)
  end

  index do
    column :category
    column :name
    column "Dog Status" do |location|
      location.dog_statuses.last.status
    end
    actions 
  end

  sidebar "Dog Status", only: [:show, :delete] do
    ul do
      li link_to "Statuses", admin_location_dog_statuses_path(location)
    end
  end

  form do |f|
    # Display different form if we're creating a new record. Violate DRY for readability and usability.
    # This is necessary to fox activeadmin into exhibiting the behaviour I want it to exhibit for this
    # model
    if f.object.new_record?
      f.inputs "Location Details" do
        f.input :name
        f.input :category, as: :select, collection: Location.categories.keys
        f.input :animal_blurb
        f.input :latitude, :as => :number
        f.input :longitude, :as => :number
        f.input :image, :as => :file, :hint => f.object.image.present? \
          ? image_tag(f.object.image.url(:medium))
          : content_tag(:span, "no image uploaded yet")
      end

      # Create a new dog status object by default. Test if empty to avoid creating a new one if form submit fails.
      f.object.dog_statuses.new if f.object.dog_statuses.empty?
      f.inputs "Dog Information", for: [:dog_statuses, f.object.dog_statuses.last] do |ds|
        ds.input :status, as: :select, collection: DogStatus.statuses.keys
        ds.input :guidelines, as: :text
      end

    # Create form for editing
    else
      f.inputs "Location Details" do
        f.input :name
        f.input :category, as: :select, collection: Location.categories.keys
        f.input :animal_blurb
        f.input :latitude, :as => :number, :input_html => { :value => f.object.geolocation.y }
        f.input :longitude, :as => :number, :input_html => { :value => f.object.geolocation.x }
        f.input :image, :as => :file, :hint => f.object.image.present? \
          ? image_tag(f.object.image.url(:medium))
          : content_tag(:span, "no image uploaded yet")
      end
      f.has_many :dog_statuses do |ds|
        ds.input :status, as: :select, collection: DogStatus.statuses.keys
        ds.input :guidelines, as: :text
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
  belongs_to :location
end
