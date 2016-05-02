class RpsRockController < ApplicationController

  def rock_form
    render("rock_form.html.erb")
  end

  def rock
    @computer_move = ["rock","paper","scissors"].sample
    if @computer_move == "rock"
      @result = "You're tied!"
    elsif @computer_move == "paper"
      @result = "You lose!"
    elsif @computer_move == "scissors"
      @result = "You win!"
    end
    render("rock.html.erb")
  end

end
