class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all

    render({ :template => "actors_templates/index.html.erb"})
  end

  def show
    @the_id = params.fetch("an_id")

    @act = Actor.where({ :id => @the_id}).at(0)
    @filmography = Character.where({ :actor_id => @act.id})
    render({ :template => "actors_templates/show.html.erb"})
  end
end
