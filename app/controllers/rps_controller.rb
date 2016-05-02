class RpsController < ApplicationController
  def rock
    @user_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
      @result = "You tied!"
    elsif @user_move == "rock" && @computer_move == "paper"
      @result = "You lost!"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "You won!"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "You won!"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @result = "You lost!"
    elsif @user_move == "scissors" && @computer_move == "rock"
      @result = "You lost!"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "You won!"
    end
    render("rps.html.erb")
  end
  def paper
    @user_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
      @result = "You tied!"
    elsif @user_move == "rock" && @computer_move == "paper"
      @result = "You lost!"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "You won!"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "You won!"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @result = "You lost!"
    elsif @user_move == "scissors" && @computer_move == "rock"
      @result = "You lost!"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "You won!"
    end
    render("rps.html.erb")
  end
  def scissors
    @user_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
      @result = "You tied!"
    elsif @user_move == "rock" && @computer_move == "paper"
      @result = "You lost!"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "You won!"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "You won!"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @result = "You lost!"
    elsif @user_move == "scissors" && @computer_move == "rock"
      @result = "You lost!"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "You won!"
    end
    render("rps.html.erb")
  end
end
