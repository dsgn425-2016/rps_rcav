class RpsController <ApplicationController

  def variables
  if @user_move == @computer_move
      @result = "You tied!"
  end
    if @result == "You tied!"
      @result_label = "label-warning"
    elsif @result == "You lose!"
      @result_label = "label-danger"
    elsif @result == "You won!"
      @result_label = "label-success"
    end
    @user_image="/assets/images/"+ @user_move + ".png"
    @computer_image="/assets/images/" + @computer_move+".png"
    render("result.html.erb")
  end

  def rock
    @user_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample
    if @user_move == @computer_move
      @result = "You tied!"
    elsif @computer_move == "paper"
      @result = "You lose!"
      @result_label = "label-danger"
    elsif @computer_move == "scissors"
      @result = "You won!"
      @result_label = "label-success"
    end
    variables
    end


  def paper
    @user_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample
    if @computer_move == "scissors"
      @result = "You lose!"
    elsif @computer_move == "rock"
      @result = "You won!"
    end
    variables
    end

  def scissors
    @user_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample
    if @computer_move == "rock"
      @result = "You lose!"
    elsif @computer_move == "paper"
      @result = "You won!"
    end
    variables
  end
end


# class RpsController < ApplicationController
#   def rps
#     @user_move = params[:the_move]
#
#     @computer_move = ["rock", "paper", "scissors"].sample
#     if @user_move == @computer_move
#       @result = "tied"
#     elsif @user_move == "paper" && @computer_move == "rock"
#       @result = "win"
#     elsif @user_move == "paper" && @computer_move == "scissors"
#       @result = "lose"
#     elsif @user_move == "scissors" && @computer_move == "rock"
#       @result = "lose"
#     elsif @user_move == "scissors" && @computer_move == "paper"
#       @result = "win"
#     elsif @user_move == "rock" && @computer_move == "paper"
#       @result = "lose"
#     elsif @user_move == "rock" && @computer_move == "scissors"
#       @result = "win"
#     end
