class RpsPaperController < ApplicationController

  def paper_form
    render("paper.html.erb")
  end

  def paper
    @computer_move = ["rock","paper","scissors"].sample
    if @computer_move == "paper"
      @result = "You're tied!"
    elsif @computer_move == "rock"
      @result = "You win!"
    elsif @computer_move == "scissors"
      @result = "You lose!"
    end
    render("paper.html.erb")
  end

end
