class ChangeColumnStatusDoubtDefaultValues < ActiveRecord::Migration[5.0]
  def change
  	change_column_default :doubts, :status, 0
  end
end
