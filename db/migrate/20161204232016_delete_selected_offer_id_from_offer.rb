class DeleteSelectedOfferIdFromOffer < ActiveRecord::Migration[5.0]
  def up
  end
  def down
  	delete_column :offer, :selected_offer_id
  end
end
