ActiveAdmin.register Company do


  index do
    column :id
    column :name
    column "Founders" do |company|
      company.founders.map { |a| [ a.firstname, a.lastname ].join (" ") }.join " - "
    end
    column :description
    column "Addresses" do |company|
      company.addresses.map { |a| [ a.street, a.zipcode, a.city ].join (" ") }.join " - "
    end
    column "Campaign" do |company|
      company.campaign.nil? ? 0 : company.campaign.amount
    end
    actions
  end

  form do |f|
    f.inputs "Identité" do
      f.input :name
      f.input :siren
      f.input :description
    end
    f.inputs "Logo" do
      f.input :banner, :as => :file, :hint => f.template.image_tag(f.object.banner.url(:thumb))
    end
     f.inputs "Picture" do
      f.input :logo, :as => :file, :hint => f.template.image_tag(f.object.logo.url(:thumb))
    end
    f.actions
  end

  show do |ad|
      attributes_table do
        row :name
        row :siren
        row :description
        row :logo do
          image_tag(ad.logo.url(:thumb))
        end
        row :banner do
          image_tag(ad.banner.url(:thumb))
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

  permit_params do
    [:name, :siren, :description, :banner, :logo]
  end
end
