class RpsController < ApplicationController

  def rock

    render("rock.html.rb")
  end

  def scissors

    render("scissors.html.rb")
  end
  
  def paper

    render("paper.html.rb")

  end

end
