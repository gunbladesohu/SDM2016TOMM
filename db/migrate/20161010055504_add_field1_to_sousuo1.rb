class AddField1ToSousuo1 < ActiveRecord::Migration[5.0]
  def change
    add_column :sousuo1s, :title1, :string
    add_column :sousuo1s, :min_year1, :integer
    add_column :sousuo1s, :max_year1, :integer
    add_column :sousuo1s, :authors1, :string
    add_column :sousuo1s, :notincludemethod1, :boolean
    add_column :sousuo1s, :research_method1, :string
    add_column :sousuo1s, :notincludeparticipant1, :boolean
    add_column :sousuo1s, :participant1, :string
    add_column :sousuo1s, :notincludemetrix1, :boolean
    add_column :sousuo1s, :metrix1, :string
    add_column :sousuo1s, :notincludestatus1, :boolean
    add_column :sousuo1s, :status1, :string
  end
end
