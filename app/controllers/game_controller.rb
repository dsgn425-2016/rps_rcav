class GameController < ApplicationController

  def rock
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result = "You tied!"
      @button = "tied"
    elsif @computer_move == "scissors"
      @result = "You won!"
      @button = "won"
    else
      @result = "You lost!"
      @button = "lost"
    end

    render("rock.html.erb")
  end

  def paper
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "paper"
      @result = "You tied!"
      @button = "tied"
    elsif @computer_move == "rock"
      @result = "You won!"
      @button = "won"
    else
      @result = "You lost!"
      @button = "lost"
    end

    render("paper.html.erb")
  end

  def scissors
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "scissors"
      @result = "You tied!"
      @button = "tied"
    elsif @computer_move == "paper"
      @result = "You won!"
      @button = "won"
    else
      @result = "You lost!"
      @button = "lost"
    end

    render("scissors.html.erb")
  end

end
