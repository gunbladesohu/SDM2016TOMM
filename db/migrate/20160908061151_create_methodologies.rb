class CreateMethodologies < ActiveRecord::Migration[5.0]
  def change
     create_table :methodologies do |t|
      t.string:methodology_name
      t.text:description
      t.timestamps
    end
  end
end
