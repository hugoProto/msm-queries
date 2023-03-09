class MoviesController < ApplicationController

  def view 
    @list_of_movies = Movie.all

    render({ :template => "movie_templates/view.html.erb"})
  end

  def movie_details

    @the_id = params.fetch("an_id")

    @dir = Director.where({ :id => @the_id })
    @the_movie = Movie.where({ :id => @the_id }).at(0)
    render({ :template => "movie_templates/movie_details.html.erb"})
  end
end