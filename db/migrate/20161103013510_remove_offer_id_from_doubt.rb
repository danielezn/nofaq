class RemoveOfferIdFromDoubt < ActiveRecord::Migration[5.0]
  def change
    remove_column :doubts, :offer_id, :integer
  end
end
