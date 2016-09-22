class CreatePaperposts < ActiveRecord::Migration[5.0]
  def change
    create_table :paperposts do |t|
      t.string :username
      t.string :articlecategory
      t.string :author
      t.string :title
      t.string :journalname
      t.string :description
      t.string :publishername
      t.integer :pages
      t.string :volume
      t.datetime :publish_date
      t.datetime :submitted_date
      t.string :status_type

      t.timestamps
    end
  end
end
