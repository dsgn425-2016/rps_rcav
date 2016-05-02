class PlayController < ApplicationController
  def rock
    @computer_move = ["paper", "rock", "scissors"].sample

    if @computer_move == "rock"
      @result = "tie"
    elsif @computer_move == "paper"
      @result = "lose"
    elsif @computer_move == "scissors"
      @result = "win"
    end

    @result = "#{@result}"

    render("rock.html.erb")
  end

  def paper
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result = "win"
    elsif @computer_move == "paper"
      @result = "tie"
    elsif @computer_move == "scissors"
      @result  = "lose"
    end
    @result = "#{@result}"

    render("paper.html.erb")
  end

  def scissors
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result = "lose"
    elsif @computer_move == "paper"
      @result = "win"
    elsif @computer_move == "scissors"
      @result  = "tie"
    end
    @result = "#{@result}"

    render("scissors.html.erb")
  end
end
