ActiveAdmin.register Location do
  filter :name
  filter :dog_statuses

  permit_params :id, :category, :name, :blurb, :geolocation, :image,
    dog_statuses_attributes: [:id, :location_id, :status, :guidelines]

  index do
    column :category
    column :name
    column :blurb
    column "Latitude" do |location|
      location.geolocation.y
    end
    column "Longitude" do |location|
      location.geolocation.x
    end
    column "Dog Status" do |location|
      location.dog_statuses.last.status
    end
    actions 
  end

  form do |f|
    f.inputs "Location Details" do
      f.input :name
      f.input :category, as: :select, collection: Location.categories.keys
      f.input :blurb
      f.input :geolocation, :as => :string
      f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url(:medium))
    end
    f.inputs "Dog Details" do
      f.has_many :dog_statuses do |ds|
        if ds.object.new_record?
          ds.input :status, as: :select, collection: DogStatus.statuses.keys
          ds.input :guidelines, as: :text
        else
          ds.input :status, as: :select, collection: DogStatus.statuses.keys
          ds.input :guidelines, as: :text
          ds.input :created_at, :input_html
        end
      end
    end
    f.actions
  end

  show do |l|
    attributes_table do
      row :name
      row :category
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
