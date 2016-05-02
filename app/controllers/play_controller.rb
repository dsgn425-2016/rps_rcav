class PlayController < ApplicationController
  def play_rock
    @user_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample
    if @user_move == @computer_move
      @result = "tied"
      render("play_tied.html.erb")
    elsif @computer_move == "scissors"
      @result = "won"
      render("play_won.html.erb")
    else
      @result = "lose"
      render("play_lost.html.erb")
    end
  end

  def play_paper
    @user_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample
    if @user_move == @computer_move
      @result = "tied"
      render("play_tied.html.erb")
    elsif @computer_move == "rock"
      @result = "won"
      render("play_won.html.erb")
    else
      @result = "lose"
      render("play_lost.html.erb")
    end
  end

  def play_scissors
    @user_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample
    if @user_move == @computer_move
      @result = "tied"
      render("play_tied.html.erb")
    elsif @computer_move == "paper"
      @result = "won"
      render("play_won.html.erb")
    else
      @result = "lose"
      render("play_lost.html.erb")
    end
  end

end
