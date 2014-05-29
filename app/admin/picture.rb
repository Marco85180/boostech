ActiveAdmin.register Picture do

  form do |f|
    f.inputs "Company link" do
      f.input :company
    end
      f.inputs "picture" do
      f.input :file, :as => :file, :hint => f.template.image_tag(f.object.file(:thumb))
    end
    f.actions
  end

  show do |comp|
      attributes_table do
        row :company_id
        row :file do
          image_tag(comp.file(:thumb))
        end
        # Will display the image on show object page
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
  permit_params do
    [:file, :company_id]
  end
end
