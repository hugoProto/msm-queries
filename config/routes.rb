Rails.application.routes.draw do
  get("/directors/eldest", { :controller => "directors", :action => "wisest"})

  get("/directors/youngest", { :controller => "directors", :action => "juvenile"})

  get("/actors", { :controller => "actors", :action => "index"})

  get("/actors/:an_id", { :controller => "actors", :action => "show"})

  get("/movies", { :controller => "movies", :action => "view"})

  get("/movies/:an_id", { :controller => "movies", :action => "movie_details" })

  get("/directors/:an_id", { :controller => "directors", :action => "director_details"})

  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index"})

  #get("/superheroes", { :controller => "superheroes", :action => "index" })

  #get("/vg", { :controller => "vg", :action => "best" })

end
