class RatingsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @rating = @movie.ratings.build(rating_params)
    if @rating.save
      redirect_to movie_path(@movie)
    else
      render 'movies/show'
    end
  end

  def destroy
    rating = Rating.find_by!(id: params[:id], movie_id: params[:movie_id])
    rating.destroy
    redirect_to movie_path(rating.movie)
  end

  def rating_params
    params.require(:rating).permit(:nick, :comment, :value)
  end
end
