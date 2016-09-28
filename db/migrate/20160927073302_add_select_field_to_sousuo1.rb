class AddSelectFieldToSousuo1 < ActiveRecord::Migration[5.0]
  def change
    add_column :sousuo1s, :selectfield, :string
    add_column :sousuo1s, :selectoperator, :string
    add_column :sousuo1s, :selecttext, :string
  end
end
