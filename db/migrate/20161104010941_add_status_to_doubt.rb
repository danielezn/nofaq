class AddStatusToDoubt < ActiveRecord::Migration[5.0]
  def change
    add_column :doubts, :status, :integer
  end
end
