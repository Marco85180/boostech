ActiveAdmin.register Campaign do


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
    [:amount, :starts, :ends, :company_id ]
  end

  index do
    column :id
    column :amount
    column :starts
    column :ends
    actions
  end

  form do |f|
    f.inputs "What campaign" do
      f.input :company
      f.input :amount
      f.input :starts
      f.input :ends
    end
    f.actions
  end

  show do |ad|
      attributes_table do
        row :company
        row :amount
        row :starts
        row :ends
      end
    end
end
