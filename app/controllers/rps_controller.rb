class RpsController < ApplicationController

  def rock

    @user_throw = "rock"

    @user_img_src = "http://localhost:3000/assets/images/rock.png"

    comp_throw = rand(3)
    if comp_throw == 0
      @comp_throw = "rock"
      @comp_img_src = "http://localhost:3000/assets/images/rock.png"
      @outcome = "Tie!"
    elsif comp_throw == 1
      @comp_throw = "paper"
      @comp_img_src = "http://localhost:3000/assets/images/paper.png"
      @outcome = "You lose!"
    else comp_throw == 2
      @comp_throw_show = "scissors"
      @comp_img_src = "http://localhost:3000/assets/images/scissors.png"
      @outcome = "You win!"
    end

    render("rock.html.erb")
  end

  def paper

    @user_throw = "paper"

    @user_img_src = "http://localhost:3000/assets/images/paper.png"

    comp_throw = rand(3)
    if comp_throw == 0
      @comp_throw = "rock"
      @comp_img_src = "http://localhost:3000/assets/images/rock.png"
      @outcome = "You Win!"
    elsif comp_throw == 1
      @comp_throw = "paper"
      @comp_img_src = "http://localhost:3000/assets/images/paper.png"
      @outcome = "Tie!"
    else comp_throw == 2
      @comp_throw_show = "scissors"
      @comp_img_src = "http://localhost:3000/assets/images/scissors.png"
      @outcome = "You lose!"
    end

    render("paper.html.erb")
  end

  def scissors

    @user_throw = "scissors"

    @user_img_src = "http://localhost:3000/assets/images/scissors.png"

    comp_throw = rand(3)
    if comp_throw == 0
      @comp_throw = "rock"
      @comp_img_src = "http://localhost:3000/assets/images/rock.png"
      @outcome = "You lose!"
    elsif comp_throw == 1
      @comp_throw = "paper"
      @comp_img_src = "http://localhost:3000/assets/images/paper.png"
      @outcome = "You win!"
    else comp_throw == 2
      @comp_throw_show = "scissors"
      @comp_img_src = "http://localhost:3000/assets/images/scissors.png"
      @outcome = "Tie!"
    end


    render("scissors.html.erb")
  end

end
