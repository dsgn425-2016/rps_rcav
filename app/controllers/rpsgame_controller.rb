class RpsgameController < ApplicationController

  def rock
    render("rock.html.erb")
  end

  def paper
    render("paper.html.erb")
  end

  def scissors
    render("scissors.html.erb")
  end

end
