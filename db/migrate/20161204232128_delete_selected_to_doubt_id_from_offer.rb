class DeleteSelectedToDoubtIdFromOffer < ActiveRecord::Migration[5.0]
  def up
  end
  def down
  	delete_columen :offer, :selected_to_doubt_id
  end
end
