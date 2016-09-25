class AddParticipantAndRateToSousuo1 < ActiveRecord::Migration[5.0]
  def change
    add_column :sousuo1s, :participant, :string
    add_column :sousuo1s, :rate, :integer
  end
end
