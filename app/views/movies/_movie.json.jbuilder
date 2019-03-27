json.extract! movie, :id, :title, :releaseDate, :durationTime, :director_id, :country_id, :created_at, :updated_at
json.url movie_url(movie, format: :json)
