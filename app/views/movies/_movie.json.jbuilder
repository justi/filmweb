json.extract! movie, :id, :title, :release_date, :duration_time, :director_id, :country_id, :created_at, :updated_at
json.url movie_url(movie, format: :json)
