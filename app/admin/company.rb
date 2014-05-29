ActiveAdmin.register Company do


  index do
    column :id
    column :name
    column :siren
    column :description
    column "Addresses" do |company|
      company.addresses.map { |a| [ a.street, a.zipcode, a.city ].join (" ") }.join " - "
    end
    actions
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
    [:name, :siren, :description ]
  end
end
