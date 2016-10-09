class CreateDoubts < ActiveRecord::Migration[5.0]
  def change
    create_table :doubts do |t|
      t.string :title
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
