class CreateSerlerusers < ActiveRecord::Migration[5.0]
  def change
    create_table :serlerusers do |t|

      t.timestamps
    end
  end
end
