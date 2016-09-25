class AddRatesToSousuo1 < ActiveRecord::Migration[5.0]
  def change
    add_column :sousuo1s, :min_rate, :integer
    add_column :sousuo1s, :max_rate, :integer
  end
end
