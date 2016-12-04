class RemoveSelectedToDoubtIdFromOffer < ActiveRecord::Migration[5.0]
  def up
  	remove_column :offers, :selected_to_doubt_id
  end
  def down
  end
end
