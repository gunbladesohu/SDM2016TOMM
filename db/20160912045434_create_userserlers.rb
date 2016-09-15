class CreateUserserlers < ActiveRecord::Migration[5.0]
  def change
    create_table :userserlers do |t|

      t.timestamps
    end
  end
end
