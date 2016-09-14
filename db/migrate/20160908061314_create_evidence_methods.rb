class CreateEvidenceMethods < ActiveRecord::Migration[5.0]
  def change
    create_table :evidence_methods do |t|
      t.integer:evidence_id
      t.integer:method_id

      t.timestamps
       
    end
    add_foreign_key:evidence_methods, :evidences,column: :evidence_id,primary_key:"id"
    add_foreign_key:evidence_methods, :se_methods,column: :method_id,primary_key:"id"
  end
end
