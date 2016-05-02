class SessionsController < ApplicationController
  def rock
    @user_throw = "Rock"
    @user_img_src = "http://localhost:3000/assets/images/rock.png"
    comp_rand_num = rand(3)
    if comp_rand_num == 0
      @comp_throw = "Rock"
      @outcome = "You tie!"
      @comp_img_src ="http://localhost:3000/assets/images/rock.png"
    elsif comp_rand_num == 1
      @comp_throw = "Paper"
      @outcome = "You lose!"
      @comp_img_src ="http://localhost:3000/assets/images/paper.png"
    else comp_rand_num == 2
      @comp_throw = "Scissors"
      @outcome = "You win!"
      @comp_img_src ="http://localhost:3000/assets/images/scissors.png"
    end

    def paper
      @user_throw = "Paper"
      @user_img_src = "http://localhost:3000/assets/images/paper.png"
      comp_rand_num = rand(3)
      if comp_rand_num == 0
        @comp_throw = "Rock"
        @outcome = "You win!"
        @comp_img_src ="http://localhost:3000/assets/images/rock.png"
      elsif comp_rand_num == 1
        @comp_throw = "Paper"
        @outcome = "You tie!"
        @comp_img_src ="http://localhost:3000/assets/images/paper.png"
      else comp_rand_num == 2
        @comp_throw = "Scissors"
        @outcome = "You lose!"
        @comp_img_src ="http://localhost:3000/assets/images/scissors.png"
      end

      def scissors
        @user_throw = "Scissors"
        @user_img_src = "http://localhost:3000/assets/images/scissors.png"
        comp_rand_num = rand(3)
        if comp_rand_num == 0
          @comp_throw = "Rock"
          @outcome = "You lose!"
          @comp_img_src ="http://localhost:3000/assets/images/rock.png"
        elsif comp_rand_num == 1
          @comp_throw = "Paper"
          @outcome = "You win!"
          @comp_img_src ="http://localhost:3000/assets/images/paper.png"
        else comp_rand_num == 2
          @comp_throw = "Scissors"
          @outcome = "You tie!"
          @comp_img_src ="http://localhost:3000/assets/images/scissors.png"
        end

end
end
  end
end
