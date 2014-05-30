class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.integer :amount
      t.datetime :starts
      t.datetime :ends
      t.references :company, index: true

      t.timestamps
    end
  end
end
