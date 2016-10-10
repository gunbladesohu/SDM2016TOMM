class CreateAnalysts < ActiveRecord::Migration[5.0]
  def change
    create_table :analysts do |t|
      t.string :research_method
      t.string :reseach_participants
      t.string :benefit_from_test
      t.string :context
      t.string :result
      t.string :se_methodology
      t.string :se_method
      t.timestamps
    end
  end
end
