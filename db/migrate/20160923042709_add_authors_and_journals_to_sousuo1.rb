class AddAuthorsAndJournalsToSousuo1 < ActiveRecord::Migration[5.0]
  def change
    add_column :sousuo1s, :authors, :string
    add_column :sousuo1s, :journal, :string
  end
end
