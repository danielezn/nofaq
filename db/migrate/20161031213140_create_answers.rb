class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.string :title
      t.text :description
      t.references :user, foreign_key: true
      t.references :doubt, foreign_key: true
      t.references :offer, foreign_key: true

      t.timestamps
    end
  end
end
