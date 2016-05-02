class RpsController < ApplicationController
  def rock
    @user_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample
    @result = "Your move was #{@user_move}.  The computer's move was #{@computer_move}."
    if @computer_move == "rock"
      @result = "It's a tie!"
    elsif @computer_move == "paper"
      @result = "You lose  :-("
    elsif @computer_move == "scissors"
      @result = "You win! You're awesome!"
    render("rock.html.erb")
  end

  def paper
    @user_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample
    @result = "Your move was #{@user_move}.  The computer's move was #{@computer_move}."
    if @computer_move == "paper"
      @result = "It's a tie!"
    elsif @computer_move == "scissors"
      @result = "You lose  :-("
    elsif @computer_move == "rock"
      @result = "You win! You're awesome!"
    render("paper.html.erb")
  end

  def scissors
    @user_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample
    @result = "Your move was #{@user_move}.  The computer's move was #{@computer_move}."
    if @computer_move == "scissors"
      @result = "It's a tie!"
    elsif @computer_move == "rock"
      @result = "You lose  :-("
    elsif @computer_move == "paper"
      @result = "You win! You're awesome!"
    render("scissors.html.erb")
  end
end
end
end
end
