class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.decimal :rate, :precision => 6, :scale => 2
      t.decimal :amount, :precision => 7
      t.references :user, index: true
      t.references :campaign, index: true
      t.string :status

      t.timestamps
    end
  end
end
