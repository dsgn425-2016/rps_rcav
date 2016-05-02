class PlayController < ApplicationController

  def rock
    @user_pick = "Rock"
    @user_img_src = "http://localhost:3000/assets/images/rock.png"
    computer = ["Rock", "Paper", "Scissors"].sample
    if computer == "Rock"
      @result = "You tied!"
      @result_label = "label-warning"
      @comp_img_src = "http://localhost:3000/assets/images/rock.png"
    elsif computer == "Paper"
      @result = "You lost!"
      @result_label = "label-danger"
      @comp_img_src = "http://localhost:3000/assets/images/paper.png"
    else computer == "Scissors"
      @result = "You win!"
      @result_label = "label-success"
      @comp_img_src = "http://localhost:3000/assets/images/scissors.png"
    end
    render("rock.html.erb")
  end

  def paper
    @user_pick = "Paper"
    @user_img_src = "http://localhost:3000/assets/images/paper.png"
    computer = ["Rock", "Paper", "Scissors"].sample
    if computer == "Rock"
      @result = "You win!"
      @result_label = "label-success"
      @comp_img_src = "http://localhost:3000/assets/images/rock.png"
    elsif computer == "Paper"
      @result = "You tied!"
      @result_label = "label-warning"
      @comp_img_src = "http://localhost:3000/assets/images/paper.png"
    else computer == "Scissors"
      @result = "You lost!"
      @result_label = "label-danger"
      @comp_img_src = "http://localhost:3000/assets/images/scissors.png"
    end
    render("paper.html.erb")
  end

  def scissors
    @user_pick = "Scissors"
    @user_img_src = "http://localhost:3000/assets/images/scissors.png"
    computer = ["Rock", "Paper", "Scissors"].sample
    if computer == "Rock"
      @result = "You lost!"
      @result_label = "label-danger"
      @comp_img_src = "http://localhost:3000/assets/images/rock.png"
    elsif computer == "Paper"
      @result = "You win!"
      @result_label = "label-success"
      @comp_img_src = "http://localhost:3000/assets/images/paper.png"
    else computer == "Scissors"
      @result = "You tied!"
      @result_label = "label-warning"
      @comp_img_src = "http://localhost:3000/assets/images/scissors.png"
    end
    render("scissors.html.erb")
   end

 end
