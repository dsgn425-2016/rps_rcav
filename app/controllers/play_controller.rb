class PlayController < ApplicationController
  def play_rock
    @user_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample
    if @user_move == @computer_move
      @result = "tied"
    elsif @computer_move == "scissors"
      @result = "won"
    else
      @result = "lose"
    end

    render("play_rock.html.erb")
  end

  def play_paper
    @user_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample
    if @user_move == @computer_move
      @result = "tied"
    elsif @computer_move == "rock"
      @result = "won"
    else
      @result = "lose"
    end
    render("play_paper.html.erb")
  end

  def play_scissors
    @user_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample
    if @user_move == @computer_move
      @result = "tied"
    elsif @computer_move == "paper"
      @result = "won"
    else
      @result = "lose"  
    end

    render("play_scissors.html.erb")
  end

end
