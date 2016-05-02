class MovesController < ApplicationController

  def rock
    @user_move = "rock"

    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
      @result = "tied!"
      @comp_image_url = "http://localhost:3000/assets/images/rock.png"
      @label_color = "label-warning"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "win!"
      @comp_image_url = "http://localhost:3000/assets/images/rock.png"
      @label_color = "label-success"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @result = "lose!"
      @comp_image_url = "http://localhost:3000/assets/images/scissors.png"
      @label_color = "label-danger"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "win!"
      @comp_image_url = "http://localhost:3000/assets/images/scissors.png"
      @label_color = "label-success"
    elsif @user_move == "rock" && @computer_move == "paper"
      @result = "lose!"
      @comp_image_url = "http://localhost:3000/assets/images/paper.png"
      @label_color = "label-danger"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "win!"
      @comp_image_url = "http://localhost:3000/assets/images/paper.png"
      @label_color = "label-success"
    elsif @user_move == "scissors" && @computer_move == "rock"
      @result = "lose!"
      @comp_image_url = "http://localhost:3000/assets/images/rock.png"
      @label_color = "label-danger"
    end

    render("rock.html.erb")

  end

  def scissors
    @user_move = "scissors"

    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
      @result = "tied!"
      @comp_image_url = "http://localhost:3000/assets/images/scissors.png"
      @label_color = "label-warning"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "win!"
      @comp_image_url = "http://localhost:3000/assets/images/rock.png"
      @label_color = "label-success"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @result = "lose!"
      @comp_image_url = "http://localhost:3000/assets/images/scissors.png"
      @label_color = "label-danger"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "win!"
      @comp_image_url = "http://localhost:3000/assets/images/scissors.png"
      @label_color = "label-success"
    elsif @user_move == "rock" && @computer_move == "paper"
      @result = "lose!"
      @comp_image_url = "http://localhost:3000/assets/images/paper.png"
      @label_color = "label-danger"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "win!"
      @comp_image_url = "http://localhost:3000/assets/images/paper.png"
      @label_color = "label-success"
    elsif @user_move == "scissors" && @computer_move == "rock"
      @result = "lose!"
      @comp_image_url = "http://localhost:3000/assets/images/rock.png"
      @label_color = "label-danger"
    end

    render("scissors.html.erb")

  end

  def paper
    @user_move = "paper"

    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
      @result = "tied!"
      @comp_image_url = "http://localhost:3000/assets/images/paper.png"
      @label_color = "label-warning"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "win!"
      @comp_image_url = "http://localhost:3000/assets/images/rock.png"
      @label_color = "label-success"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @result = "lose!"
      @comp_image_url = "http://localhost:3000/assets/images/scissors.png"
      @label_color = "label-danger"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "win!"
      @comp_image_url = "http://localhost:3000/assets/images/scissors.png"
      @label_color = "label-success"
    elsif @user_move == "rock" && @computer_move == "paper"
      @result = "lose!"
      @comp_image_url = "http://localhost:3000/assets/images/paper.png"
      @label_color = "label-danger"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "win!"
      @comp_image_url = "http://localhost:3000/assets/images/paper.png"
      @label_color = "label-success"
    elsif @user_move == "scissors" && @computer_move == "rock"
      @result = "lose!"
      @comp_image_url = "http://localhost:3000/assets/images/rock.png"
      @label_color = "label-danger"
    end

    render("paper.html.erb")

  end
end
