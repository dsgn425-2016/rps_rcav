class RpsgameController < ApplicationController

  def rock
    choices = ["rock","scissors","paper"]
    @computer_move = choices.sample
    @user_image = "/public/assets/images/rock.png"
    if @computer_move == "rock"
      @result = "You're tied!"
      @comp_image = "/public/assets/images/rock.png"
      @label = "label-warning"
    elsif @computer_move == "paper"
      @result = "You lose!"
      @comp_image = "/public/assets/images/paper.png"
      @label = "label-danger"
    elsif @computer_move == "scissors"
      @result = "You win!"
      @comp_image = "/public/assets/images/scissors.png"
      @label = "label-success"
    end
    render("rock.html.erb")
  end

  def paper
    choices = ["rock","scissors","paper"]
    @computer_move = choices.sample
    @user_image = "/public/assets/images/paper.png"
    if @computer_move == "rock"
      @result = "You win!"
      @comp_image = "/public/assets/images/rock.png"
      @label = "label-success"
    elsif @computer_move == "paper"
      @result = "You're tied!"
      @comp_image = "/public/assets/images/paper.png"
      @label = "label-warning"
    elsif @computer_move == "scissors"
      @result = "You lose!"
      @comp_image = "/public/assets/images/scissors.png"
      @label = "label-danger"
    end
    render("paper.html.erb")
  end

  def scissors
    choices = ["rock","scissors","paper"]
    @computer_move = choices.sample
    @user_image = "/public/assets/images/scissors.png"
    if @computer_move == "rock"
      @result = "You lose!"
      @comp_image = "/public/assets/images/rock.png"
      @label = "label-danger"
    elsif @computer_move == "paper"
      @result = "You win!"
      @comp_image = "/public/assets/images/paper.png"
      @label = "label-success"
    elsif @computer_move == "scissors"
      @result = "You're tied!"
      @comp_image = "/public/assets/images/scissors.png"
      @label = "label-warning"
    end
    render("scissors.html.erb")
  end

end
