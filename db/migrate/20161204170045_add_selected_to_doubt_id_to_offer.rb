class AddSelectedToDoubtIdToOffer < ActiveRecord::Migration[5.0]
  def change
    add_column :offers, :selected_to_doubt_id, :integer
  end
end
