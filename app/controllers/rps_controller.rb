class RpsController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  def rock
    @user_throw = "Rock"
    @user_img_src = "http://localhost:3000/assets/images/rock.png"
    comp_choice_num = rand(3)
    if comp_choice_num == 0
      @computer_throw = "Rock"
      @outcome = "You tied!"
      @outcome_css = "label-warning"
      @comp_img_src = "http://localhost:3000/assets/images/rock.png"
    elsif comp_choice_num == 1
      @computer_throw = "Paper"
      @outcome = "You lost!"
      @outcome_css = "label-danger"
      @comp_img_src = "http://localhost:3000/assets/images/paper.png"
    else comp_choice_num == 2
      @computer_throw = "Scissors"
      @outcome = "You won!"
      @outcome_css = "label-success"
      @comp_img_src = "http://localhost:3000/assets/images/scissors.png"
    end
    render("rock.html.erb")
  end

  def paper
    @user_throw = "Paper"
    @user_img_src = "http://localhost:3000/assets/images/paper.png"
    comp_choice_num = rand(3)
    if comp_choice_num == 0
      @computer_throw = "Rock"
      @outcome = "You win!"
      @outcome_css = "label-success"
      @comp_img_src = "http://localhost:3000/assets/images/rock.png"
    elsif comp_choice_num == 1
      @computer_throw = "Paper"
      @outcome = "You tied!"
      @outcome_css = "label-warning"
      @comp_img_src = "http://localhost:3000/assets/images/paper.png"
    else comp_choice_num == 2
      @computer_throw = "Scissors"
      @outcome = "You lost!"
      @outcome_css = "label-danger"
      @comp_img_src = "http://localhost:3000/assets/images/scissors.png"
    end
    render("paper.html.erb")
  end


  def scissors
    @user_throw = "Scissors"
    @user_img_src = "http://localhost:3000/assets/images/scissors.png"
    comp_choice_num = rand(3)
    if comp_choice_num == 0
      @computer_throw = "Rock"
      @outcome = "You lost!"
      @outcome_css = "label-danger"
      @comp_img_src = "http://localhost:3000/assets/images/rock.png"
    elsif comp_choice_num == 1
      @computer_throw = "Paper"
      @outcome = "You won!"
      @outcome_css = "label-success"
      @comp_img_src = "http://localhost:3000/assets/images/paper.png"
    else comp_choice_num == 2
      @computer_throw = "Scissors"
      @outcome = "You tied!"
      @outcome_css = "label-warning"
      @comp_img_src = "http://localhost:3000/assets/images/scissors.png"
    end
    render("scissors.html.erb")
  end

end
