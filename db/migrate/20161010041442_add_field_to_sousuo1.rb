class AddFieldToSousuo1 < ActiveRecord::Migration[5.0]
  def change
    add_column :sousuo1s, :status, :string
    add_column :sousuo1s, :metrix, :string
    add_column :sousuo1s, :notincludemetrix, :boolean
    add_column :sousuo1s, :notincludestatus, :boolean
  end
end
