class AddMaxYearAndMinyearToSousuo1 < ActiveRecord::Migration[5.0]
  def change
    add_column :sousuo1s, :min_year, :integer
    add_column :sousuo1s, :max_year, :integer
  end
end
