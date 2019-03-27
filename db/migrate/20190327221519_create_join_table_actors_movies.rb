class CreateJoinTableActorsMovies < ActiveRecord::Migration[5.2]
  def change
    create_join_table :actors, :movies do |t|
      t.index [:actor_id, :movie_id]
    end
  end
end
