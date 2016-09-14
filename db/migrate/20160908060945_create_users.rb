class CreateUsers < ActiveRecord::Migration[5.0]
  def change
 create_table :users do |t|
      t.string:user_role
      t.string:user_status
      t.string:user_name
      t.string:user_password_hash
      t.text:user_fullname
      t.text:user_email
      t.string:user_gender
      t.integer:user_age
      t.timestamps
    end
  end
end
