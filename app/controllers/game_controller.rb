class GameController < ApplicationController

  def rock
    @user_move = "rock"
    @user_move_img = "http://localhost:3000/assets/images/rock.png"
    @computer_move = ["rock", "paper", "scissors"].sample
    if @computer_move == "rock"
      @result = "You tied!"
      @result_label = "label-warning"
      @computer_img = "http://localhost:3000/assets/images/rock.png"
    elsif @computer_move == "paper"
      @result = "You lose!"
      @result_label = "label-danger"
      @computer_img = "http://localhost:3000/assets/images/paper.png"
    elsif @computer_move == "scissors"
      @result = "You win!"
      @result_label = "label-success"
      @computer_img = "http://localhost:3000/assets/images/scissors.png"
    end

    render("rock.html.erb")
  end

  def paper
    @user_move = "paper"
    @user_move_img = "http://localhost:3000/assets/images/paper.png"
    @computer_move = ["rock", "paper", "scissors"].sample
    if @computer_move == "rock"
      @result_label = "label-success"
      @computer_img = "http://localhost:3000/assets/images/rock.png"
      @result = "You win!"
    elsif @computer_move == "paper"
        @computer_img = "http://localhost:3000/assets/images/paper.png"
      @result = "You tied!"
      @result_label = "label-warning"
    elsif @computer_move == "scissors"
      @computer_img = "http://localhost:3000/assets/images/scissors.png"
      @result = "You lose!"
      @result_label = "label-danger"
    end
    render("paper.html.erb")
  end

  def scissors
    @user_move = "scissors"
    @user_move_img = "http://localhost:3000/assets/images/scissors.png"
    @computer_move = ["rock", "paper", "scissors"].sample
    if @computer_move == "rock"
      @computer_img = "http://localhost:3000/assets/images/rock.png"
      @result = "You lose!"
      @result_label = "label-danger"
    elsif @computer_move == "paper"
        @computer_img = "http://localhost:3000/assets/images/paper.png"
      @result = "You win!"
      @result_label = "label-success"
    elsif @computer_move == "scissors"
      @computer_img = "http://localhost:3000/assets/images/scissors.png"
      @result = "You tied!"
      @result_label = "label-warning"
    end
    render("scissors.html.erb")
  end
end
