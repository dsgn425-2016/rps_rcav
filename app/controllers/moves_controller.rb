class MovesController < ApplicationController
  def rock
    @computer_move = ["rock","paper","scissors"].sample
    if @computer_move == "rock"
      @result = "tied"
  elsif @computer_move == "paper"
    @result = "lose"
  else
    @result = "win"
    end
    render("rock.html.erb")
  end

  def paper
    @computer_move = ["rock","paper","scissors"].sample
    if @computer_move == "rock"
      @result = "win"
  elsif @computer_move == "paper"
    @result = "tied"
  else
    @result = "lose"
    end
    render("paper.html.erb")
  end

  def scissors
    @computer_move = ["rock","paper","scissors"].sample
    if @computer_move == "rock"
      @result = "lose"
  elsif @computer_move == "paper"
    @result = "win"
  else
    @result = "tied"
    end
    render("scissors.html.erb")
  end
end
