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
    end
    @user_image = "/assets/images/" + @user_move + ".png"
    @comp_image = "/assets/images/" + @computer_move + ".png"
    if @result == "You tied!"
      @result_label = "label-warning"
    elsif @result == "You lost!"
      @result_label = "label-danger"
    elsif @result == "You won!"
      @result_label = "label-success"
    end
    render("rock.html.erb")
  end

  def paper
    @user_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample
    if @user_move == @computer_move
      @result = "You tied!"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "You won!"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @result = "You lost!"
    end
    @user_image = "/assets/images/" + @user_move + ".png"
    @comp_image = "/assets/images/" + @computer_move + ".png"
    if @result == "You tied!"
      @result_label = "label-warning"
    elsif @result == "You lost!"
      @result_label = "label-danger"
    elsif @result == "You won!"
      @result_label = "label-success"
    end
    render("paper.html.erb")
  end

  def scissors
    @user_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample
    if @user_move == @computer_move
      @result = "You tied!"
    elsif @user_move == "scissors" && @computer_move == "rock"
        @result = "You lost!"
    elsif @user_move == "scissors" && @computer_move == "paper"
        @result = "You won!"
    end
    @user_image = "/assets/images/" + @user_move + ".png"
    @comp_image = "/assets/images/" + @computer_move + ".png"
    if @result == "You tied!"
      @result_label = "label-warning"
    elsif @result == "You lost!"
      @result_label = "label-danger"
    elsif @result == "You won!"
      @result_label = "label-success"
    end
    render("scissors.html.erb")
  end

end
