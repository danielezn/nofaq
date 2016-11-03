class AddOfferIdToDoubts < ActiveRecord::Migration[5.0]
  def change
    add_column :doubts, :offer_id, :integer
  end
end
