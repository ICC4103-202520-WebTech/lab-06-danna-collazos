class CreateRecipes < ActiveRecord::Migration[8.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :cook_time
      t.string :difficulty
      t.references :record, null: false, polymorphic: true, index: false, type: :uuid

      t.timestamps
    end
  end
end
