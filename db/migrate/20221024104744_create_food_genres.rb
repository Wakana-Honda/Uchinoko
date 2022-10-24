class CreateFoodGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :food_genres do |t|
      t.references :food, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
