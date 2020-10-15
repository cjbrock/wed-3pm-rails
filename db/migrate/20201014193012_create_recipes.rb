class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.boolean :ice
      t.string :instructions
      t.string :ingredients
      t.string :mixers
      t.belongs_to :bartender, null: false, foreign_key: true
      t.belongs_to :alcohol, null: false, foreign_key: true
    end
  end
end
