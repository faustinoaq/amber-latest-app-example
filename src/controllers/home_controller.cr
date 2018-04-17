class HomeController < ApplicationController
  def index
    render("index.slang")
  end

  def boom
    raise "Hello!!!"
  end
  
  def about
    render("about.slang")
  end
end

