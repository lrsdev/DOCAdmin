ActiveAdmin.register Report do
  filter :animal
  filter :location
  filter :created_at
  actions :all, except: [:new]

  index do
    column :animal
    column :location
    column :blurb
    column :created_at
    actions
  end

  form do |f|
    f.inputs "Report Details" do
      f.input :animal
      f.input :location
      f.input :blurb
    end
  end

  show do |l|
    attributes_table do
      row :animal
      row :location
      row :geolocation
      row :blurb
      row :created_at
      row :image do
        image_tag l.image.url(:medium)
      end
    end
  end
end
