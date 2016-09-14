class CreatePaperAuthors < ActiveRecord::Migration[5.0]
  def change
     create_table :paper_authors do |t|
      t.integer:paper_id
      t.integer:author_id
      t.timestamps
    end  
      add_foreign_key:paper_authors, :papers, column: :paper_id, primary_key:"id"
      add_foreign_key:paper_authors, :authors, column: :author_id, primary_key:"id"
    
  end
end
