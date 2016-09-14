class CreateSeMethods < ActiveRecord::Migration[5.0]
  def change
     create_table :se_methods do |t|
      t.integer:methodology_id
      t.string:method_name
      t.timestamps
      
      
    end
    add_foreign_key:se_methods, :methodologies,column: :methodology_id, primary_key:"id"
    
  end
end
