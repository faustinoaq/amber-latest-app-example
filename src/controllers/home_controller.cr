class HomeController < ApplicationController
  def index
    render("index.slang")
  end

  def boom
    raise "Boom!!!"
  end
  
  def about
    render("about.slang")
  end
end

