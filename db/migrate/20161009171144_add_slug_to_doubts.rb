class AddSlugToDoubts < ActiveRecord::Migration[5.0]
  def change
    add_column :doubts, :slug, :string
  end
end
