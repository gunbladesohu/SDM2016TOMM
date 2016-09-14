class CreatePapers < ActiveRecord::Migration[5.0]
  def change
     create_table :papers  do |t|
      t.integer:user_id
      t.datetime:submitted_date
      t.string:paper_status
      t.integer:moderator_id
      t.datetime:moderated_time
      t.integer:analyst_id
      t.datetime:analysed_time
      t.string:authors
      t.string:title
      t.string:journal
      t.integer:publish_year
      t.integer:publish_volume
      t.integer:publish_pages
      t.text:publish_month
      t.string:credibility_rate
      t.string:research_metrix
      t.text:research_aim
      t.boolean:research_method_field1
      t.boolean:research_method_field2
      t.boolean:research_method_field3
      t.boolean:research_method_field4
      t.boolean:participant1
      t.boolean:participant2
      t.boolean:participant3
      t.boolean:participant4

      t.timestamps
    end
    add_foreign_key:papers, :users,column: :user_id,primary_key: :id
   
  end
end
