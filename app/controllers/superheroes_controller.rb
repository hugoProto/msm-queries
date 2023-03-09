class SuperheroesController < ApplicationController

  def index
    @superheroes = ["spiderman", "batman", "robin"]

    # superheroes/index.html.erb
    render({ :template => "superheroes/index.html.erb"})
  end
end
