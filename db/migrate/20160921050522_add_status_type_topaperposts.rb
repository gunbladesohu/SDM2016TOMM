class AddStatusTypeTopaperposts < ActiveRecord::Migration[5.0]
  def change
    add_column :paperposts, :status_type, :string
  end
end
