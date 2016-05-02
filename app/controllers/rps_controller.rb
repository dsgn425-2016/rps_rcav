class RpsController < ApplicationController
  def rock
    @user_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample
    @computer_image = "/assets/images/" + @computer_move.to_s + ".png"
    @result = "Your move was #{@user_move}.  The computer's move was #{@computer_move}."
    if @computer_move == "rock"
      @result = "It's a tie!"
      @button_result = "label label-warning"
    elsif @computer_move == "paper"
      @result = "You lose  :-("
      @button_result = "label label-danger"
    elsif @computer_move == "scissors"
      @result = "You win! You're awesome!"
      @button_result = "label label-success"
    render("rock.html.erb")
  end

  def paper
    @user_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample
    @computer_image = "/assets/images/" + @computer_move.to_s + ".png"
    @result = "Your move was #{@user_move}.  The computer's move was #{@computer_move}."
    if @computer_move == "paper"
      @result = "It's a tie!"
      @button_result = "label label-warning"
    elsif @computer_move == "scissors"
      @result = "You lose  :-("
      @button_result = "label label-danger"
    elsif @computer_move == "rock"
      @result = "You win! You're awesome!"
      @button_result = "label label-success"
    render("paper.html.erb")
  end

  def scissors
    @user_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample
    @computer_image = "/assets/images/" + @computer_move.to_s + ".png"
    @result = "Your move was #{@user_move}.  The computer's move was #{@computer_move}."
    if @computer_move == "scissors"
      @result = "It's a tie!"
      @button_result = "label label-warning"
    elsif @computer_move == "rock"
      @result = "You lose  :-("
      @button_result = "label label-danger"
    elsif @computer_move == "paper"
      @result = "You win! You're awesome!"
      @button_result = "label label-success"
    render("scissors.html.erb")
  end
end
end
end
end
