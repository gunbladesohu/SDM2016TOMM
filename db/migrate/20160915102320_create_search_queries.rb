class CreateSearchQueries < ActiveRecord::Migration[5.0]
  def change
    create_table :search_queries do |t|
      t.datetime :date_range
      t.string :author
      t.integer :credibility_rate
      t.boolean :research_method_field1
      t.boolean :research_method_field2
      t.boolean :research_method_field3
      t.boolean :research_method_field4
      t.string :se_method
      t.integer :research_metric
      t.boolean :participant1
      t.boolean :participant2
      t.boolean :participant3
      t.boolean :participant4

      t.timestamps
    end
  end
end
