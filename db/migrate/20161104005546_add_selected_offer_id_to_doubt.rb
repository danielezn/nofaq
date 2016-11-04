class AddSelectedOfferIdToDoubt < ActiveRecord::Migration[5.0]
  def change
    add_column :doubts, :selected_offer_id, :integer
  end
end
