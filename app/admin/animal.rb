ActiveAdmin.register Animal do
  actions :all, except: [:destroy]
  filter :name

  permit_params :name, :blurb, :guidelines, :ext_url, :target, :image

  index do
    column :name
    column :active
    column :created_at
    actions
  end

  form do |f|
    f.inputs "Animal Details" do
      f.input :name
      f.input :blurb
      f.input :guidelines
      f.input :ext_url
      f.input :active, as: :select
      f.input :image, :as => :file, :hint => f.object.image.present? \
        ? image_tag(f.object.image.url(:medium))
        : content_tag(:span, "no image uploaded")
    end
    f.actions
  end

  show do |a|
    attributes_table do
      row :name
      row :blurb
      row :guidelines
      row :ext_url
      row :active
      row :image do
        image_tag a.image.url(:medium)
      end
    end
  end
end

