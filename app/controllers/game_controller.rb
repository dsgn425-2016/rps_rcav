class GameController < ApplicationController
  def fist
    comp_move_num = rand(3)
    if comp_move_num == 0
      @computer_move = "Rock"
      @outcome = "You tied!"
      @comp_image_url = "http://localhost:3000/assets/images/rock.png"
      @label_color = "label-warning"
    elsif comp_move_num ==1
      @computer_move = "Paper"
      @outcome = "You lost!"
      @comp_image_url = "http://localhost:3000/assets/images/paper.png"
      @label_color = "label-danger"
    else
      @computer_move = "Scissors"
      @outcome = "You won!"
      @comp_image_url = "http://localhost:3000/assets/images/scissors.png"
      @label_color = "label-success"
    end
    render 'fist'
  end

  def flat
    comp_move_num = rand(3)
    if comp_move_num == 0
      @computer_move = "Rock"
      @outcome = "You won!"
      @comp_image_url = "http://localhost:3000/assets/images/rock.png"
      @label_color = "label-success"
    elsif comp_move_num ==1
      @computer_move = "Paper"
      @outcome = "You tied!"
      @comp_image_url = "http://localhost:3000/assets/images/paper.png"
      @label_color = "label-warning"
    else
      @computer_move = "Scissors"
      @outcome = "You lost!"
      @comp_image_url = "http://localhost:3000/assets/images/scissors.png"
      @label_color = "label-danger"
    end
    render 'flat'
  end

  def cut
    comp_move_num = rand(3)
    if comp_move_num == 0
      @computer_move = "Rock"
      @outcome = "You lost!"
      @comp_image_url = "http://localhost:3000/assets/images/rock.png"
      @label_color = "label-danger"
    elsif comp_move_num ==1
      @computer_move = "Paper"
      @outcome = "You won!"
      @comp_image_url = "http://localhost:3000/assets/images/paper.png"
      @label_color = "label-success"
    else
      @computer_move = "Scissors"
      @outcome = "You tied!"
      @comp_image_url = "http://localhost:3000/assets/images/scissors.png"
      @label_color = "label-warning"
    end
    render 'cut'
  end
end
