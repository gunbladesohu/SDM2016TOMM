class AddFieldsToSousuo1 < ActiveRecord::Migration[5.0]
  def change
    add_column :sousuo1s, :title2, :string
    add_column :sousuo1s, :min_year2, :integer
    add_column :sousuo1s, :max_year2, :integer
    add_column :sousuo1s, :authors2, :string
    add_column :sousuo1s, :notincludemethods2, :boolean
    add_column :sousuo1s, :research_method2, :string
    add_column :sousuo1s, :notincludeparticipant2, :boolean
    add_column :sousuo1s, :participant2, :string
    add_column :sousuo1s, :notincludemetrix2, :boolean
    add_column :sousuo1s, :metrix2, :string
    add_column :sousuo1s, :notincludestatus2, :boolean
    add_column :sousuo1s, :status2, :string
  end
end
