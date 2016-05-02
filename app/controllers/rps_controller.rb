class RpsController < ApplicationController
  def rock
    @user_move = "rock"

    @computer_move = ["rock","paper","scissors"].sample

    if @user_move == @computer_move
      @result= "tie"
    elsif @computer_move ="paper"
        @result= "lose"
    else
      @result= "win"
    end

    render("rps/results.html.erb")
  end

  def paper
    @user_move = "paper"

    @computer_move = ["rock","paper","scissors"].sample

    if @user_move == @computer_move
      @result= "tie"
    elsif @computer_move ="scissors"
        @result= "lose"
    else
      @result= "win"
    end

    render("rps/results.html.erb")
  end

  def scissors
    @user_move = "scissors"

    @computer_move = ["rock","paper","scissors"].sample

    if @user_move == @computer_move
      @result= "tie"
    elsif @computer_move ="rock"
        @result= "lose"
    else
      @result= "win"
    end

    render("rps/results.html.erb")
  end

end
