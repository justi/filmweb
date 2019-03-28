class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.references :movie, foreign_key: true
      t.string :nick
      t.integer :value
      t.text :comment

      t.timestamps
    end
  end
end
