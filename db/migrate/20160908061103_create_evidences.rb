class CreateEvidences < ActiveRecord::Migration[5.0]
  def change
    create_table :evidences do |t|
      t.string:evidence_result
      t.integer:paper_id
      t.text:context
      t.integer:confidence_rate
      t.string:method_implementation
      t.timestamps
    end
  end
end
