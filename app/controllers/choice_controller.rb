class ChoiceController <ApplicationController

  def rock
    @user_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
        @result = "You tied!"
        @result_format = "label-warning"
      elsif @user_move == "paper" && @computer_move == "rock"
        @result = "You win!"
        @result_format = "label-success"
      elsif @user_move == "paper" && @computer_move == "scissors"
        @result = "You lose!"
        @result_format = "label-danger"
      elsif @user_move == "scissors" && @computer_move == "rock"
        @result = "You lose!"
        @result_format = "label-danger"
      elsif @user_move == "scissors" && @computer_move == "paper"
        @result = "You win!"
        @result_format = "label-success"
      elsif @user_move == "rock" && @computer_move == "paper"
        @result = "You lose!"
        @result_format = "label-danger"
      elsif @user_move == "rock" && @computer_move == "scissors"
        @result = "You win!"
        @result_format = "label-success"
      end
    render("rock.html.erb")
  end

  def paper
    @user_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
        @result = "You tied!"
        @result_format = "label-warning"
      elsif @user_move == "paper" && @computer_move == "rock"
        @result = "You win!"
        @result_format = "label-success"
      elsif @user_move == "paper" && @computer_move == "scissors"
        @result = "You lose!"
        @result_format = "label-danger"
      elsif @user_move == "scissors" && @computer_move == "rock"
        @result = "You lose!"
        @result_format = "label-danger"
      elsif @user_move == "scissors" && @computer_move == "paper"
        @result = "You win!"
        @result_format = "label-success"
      elsif @user_move == "rock" && @computer_move == "paper"
        @result = "You lose!"
        @result_format = "label-danger"
      elsif @user_move == "rock" && @computer_move == "scissors"
        @result = "You win!"
        @result_format = "label-success"
      end
    render("paper.html.erb")

  end

  def scissors
    @user_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
        @result = "You tied!"
        @result_format = "label-warning"
      elsif @user_move == "paper" && @computer_move == "rock"
        @result = "You win!"
        @result_format = "label-success"
      elsif @user_move == "paper" && @computer_move == "scissors"
        @result = "You lose!"
        @result_format = "label-danger"
      elsif @user_move == "scissors" && @computer_move == "rock"
        @result = "You lose!"
        @result_format = "label-danger"
      elsif @user_move == "scissors" && @computer_move == "paper"
        @result = "You win!"
        @result_format = "label-success"
      elsif @user_move == "rock" && @computer_move == "paper"
        @result = "You lose!"
        @result_format = "label-danger"
      elsif @user_move == "rock" && @computer_move == "scissors"
        @result = "You win!"
        @result_format = "label-success"
      end

    render("scissors.html.erb")

  end
end
