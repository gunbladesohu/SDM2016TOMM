class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :username
      t.datetime :submitted_date
      t.string :paper_status
      t.integer :moderated_id
      t.datetime :moderated_date
      t.integer :analysed_id
      t.datetime :analysed_date
      t.string :authors
      t.text :title
      t.text :journal
      t.integer :publish_year
      t.integer :publish_volume
      t.integer :publish_pages
      t.string :publish_month
      t.string :credibility_rate
      t.string :research_metrix
      t.text :research_aim
      t.string :research_method
      t.string :participant

      t.timestamps
    end
  end
end
