class ChangeColumnDoubtDefaultValues < ActiveRecord::Migration[5.0]
  def change
  	change_column_default :doubts, :privacy, 0
  end
end
