class AddPrivacyToDoubt < ActiveRecord::Migration[5.0]
  def change
    add_column :doubts, :privacy, :integer
  end
end
