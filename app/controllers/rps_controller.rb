class RpsController < ApplicationController
  def rock
    @user_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample
    if @user_move == @computer_move
      @result = "You tied!"
      @result_color = "label-warning"
    elsif @computer_move == "paper"
      @result = "You lost!"
      @result_color = "label-danger"
    elsif @computer_move == "scissors"
      @result = "You won!"
      @result_color = "label-success"
    end
    render("result.html.erb")
  end

  def paper
    @user_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample
    if @user_move == @computer_move
      @result = "You tied!"
      @result_color = "label-warning"
    elsif @computer_move == "rock"
      @result = "You won!"
      @result_color = "label-success"
    elsif @computer_move == "scissors"
      @result = "You lost!"
      @result_color = "label-danger"
    end
    render("result.html.erb")
  end

  def scissors
    @user_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample
    if @user_move == @computer_move
      @result = "You tied!"
      @result_color = "label-warning"
    elsif @computer_move == "paper"
      @result = "You won!"
      @result_color = "label-success"
    elsif @computer_move == "rock"
      @result = "You lost!"
      @result_color = "label-danger"
    end
    render("result.html.erb")
  end

end
