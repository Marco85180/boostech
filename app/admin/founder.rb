ActiveAdmin.register Founder do

  permit_params do
    [:firstname, :lastname, :email, :picture, :company_id ]
  end

  index do
    column :id
    column :firstname
    column :lastname
    column :email
    actions
  end

  form do |f|
    f.inputs "Identité" do
      f.input :company
      f.input :firstname
      f.input :lastname
      f.input :email
    end
    f.inputs "Face" do
      f.input :picture, :as => :file, :hint => f.template.image_tag(f.object.picture.url(:thumb))
    end
    f.actions
  end

  show do |ad|
      attributes_table do
        row :firstname
        row :lastname
        row :email
        row :picture do
          image_tag(ad.picture.url(:thumb))
      end
    end
  end

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

end
