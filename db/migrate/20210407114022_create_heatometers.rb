class CreateHeatometers < ActiveRecord::Migration[6.1]
  def change
    create_table :heatometers do |t|
      t.integer :max_cold
      t.integer :min_hot

      t.timestamps
    end
  end
end
