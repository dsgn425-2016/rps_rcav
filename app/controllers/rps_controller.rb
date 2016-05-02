class RpsController < ApplicationController
    def rock
      @user_throw = "Rock"
      @user_img_src = "http://localhost:3000/assets/images/rock.png"

      comp_rand_num = rand(3)
      if comp_rand_num == 0
        @comp_throw = "Rock"
        @comp_img_src = "http://localhost:3000/assets/images/rock.png"
        @outcome = "You Tie!"
      elsif comp_rand_num == 1
        @comp_throw = "Paper"
        @comp_img_src = "http://localhost:3000/assets/images/paper.png"
        @outcome = "You Lose!"
      else comp_rand_num == 2
        @comp_throw = "Scissors"
          @comp_img_src = "http://localhost:3000/assets/images/scissors.png"
        @outcome = "You Win!"
      end

      end

    def paper
      @user_throw = "Paper"
      @user_img_src = "http://localhost:3000/assets/images/paper.png"

      comp_rand_num = rand(3)
      if comp_rand_num == 0
        @comp_throw = "Rock"
        @comp_img_src = "http://localhost:3000/assets/images/rock.png"
        @outcome = "You Win!"
      elsif comp_rand_num == 1
        @comp_throw = "Paper"
        @comp_img_src = "http://localhost:3000/assets/images/paper.png"
        @outcome = "You Tie!"
      else comp_rand_num == 2
        @comp_throw = "Scissors"
          @comp_img_src = "http://localhost:3000/assets/images/scissors.png"
        @outcome = "You Lose!"
      end

    end

    def scissors
      @user_throw = "Scissors"
      @user_img_src = "http://localhost:3000/assets/images/scissors.png"

      comp_rand_num = rand(3)
      if comp_rand_num == 0
        @comp_throw = "Rock"
        @comp_img_src = "http://localhost:3000/assets/images/rock.png"
        @outcome = "You Lose!"
      elsif comp_rand_num == 1
        @comp_throw = "Paper"
        @comp_img_src = "http://localhost:3000/assets/images/paper.png"
        @outcome = "You Win!"
      else comp_rand_num == 2
        @comp_throw = "Scissors"
          @comp_img_src = "http://localhost:3000/assets/images/scissors.png"
        @outcome = "You Tie!"
      render ("scissors.html.erb")
    end
end
end
