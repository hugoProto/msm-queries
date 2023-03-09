class VgController < ApplicationController

  def best
    @videogames = ["bioshock", "prey", "prototype"]

    render({ :template => "vg/best.html.erb"})
  end

end
