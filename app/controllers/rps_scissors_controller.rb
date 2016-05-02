class RpsScissorsController < ApplicationController

  def scissors_form
    render("scissors_form.html.erb")
  end

  def scissors
    @computer_move = ["rock","paper","scissors"].sample
    if @computer_move == "rock"
      @result = "You lose!"
    elsif @computer_move == "paper"
      @result = "You win!"
    elsif @computer_move == "scissors"
      @result = "You're tied!"
    end
    render("scissors.html.erb")  end

end
