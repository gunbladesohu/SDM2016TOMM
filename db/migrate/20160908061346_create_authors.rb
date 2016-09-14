class CreateAuthors < ActiveRecord::Migration[5.0]
  def change
   create_table :authors do |t|
      t.string:author_name
      t.string:author_gender
      t.text:title
      t.timestamps
    end
  end
end
