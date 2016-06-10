class RocksController < ApplicationController

  def rock
    @user_throw = "Rock"
    @user_img_src = "http://localhost:3000/assets/images/rock.png"
    computer_pick = rand(3)
    if computer_pick == 0
      @computer_throw = "Rock"
      @outcome = "You tied!"
      @outcome_css = "label-warning"
      @comp_img_src = "http://localhost:3000/assets/images/rock.png"
    elsif computer_pick == 1
      @computer_throw = "Paper"
      @outcome = "You lost!"
      @outcome_css = "label-danger"
      @comp_img_src = "http://localhost:3000/assets/images/paper.png"
    else computer_pick == 2
      @computer_throw = "Scissors"
      @outcome = "You won!"
      @outcome_css = "label-success"
      @comp_img_src = "http://localhost:3000/assets/images/scissors.png"
    end
    render("rock.html.erb")
  end

end
