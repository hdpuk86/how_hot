class CreateTemperatureRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :temperature_ratings do |t|
      t.references :heatometer, null: false, foreign_key: true
      t.string :postcode
      t.string :rating

      t.timestamps
    end
  end
end
