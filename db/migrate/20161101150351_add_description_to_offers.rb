class AddDescriptionToOffers < ActiveRecord::Migration[5.0]
  def change
    add_column :offers, :description, :text
  end
end
