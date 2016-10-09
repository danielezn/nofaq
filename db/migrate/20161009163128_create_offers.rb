class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.integer :currency
      t.float :amount
      t.references :user, foreign_key: true
      t.references :doubt, foreign_key: true

      t.timestamps
    end
  end
end
