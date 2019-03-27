class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :release_date
      t.integer :duration_time
      t.references :director, foreign_key: true
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
