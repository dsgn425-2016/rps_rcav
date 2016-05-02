class RpsController < ApplicationController


   def rock
     @user = "Rock"
     @user_img = "http://localhost:3000/assets/images/rock.png"
     comp_choice = rand(3)
     if comp_choice == 0
       @computer = "Rock"
       @outcome = "You tied!"
        @outcome_css = "label-warning"
        @comp_img = "http://localhost:3000/assets/images/rock.png"
     elsif comp_choice == 1
       @computer = "Paper"
       @outcome = "You lost!"
        @outcome_css = "label-danger"
        @comp_img = "http://localhost:3000/assets/images/paper.png"
     else comp_choice == 2
       @computer = "Scissors"
       @outcome = "You won!"
        @outcome_css = "label-success"
        @comp_img = "http://localhost:3000/assets/images/scissors.png"
     end
     render("rock.html.erb")
   end

   def paper
     @user = "Paper"
     @user_img = "http://localhost:3000/assets/images/paper.png"
     comp_choice = rand(3)
     if comp_choice == 0
       @computer = "Rock"
       @outcome = "You win!"
        @outcome_css = "label-success"
        @comp_img = "http://localhost:3000/assets/images/rock.png"
     elsif comp_choice == 1
       @computer = "Paper"
       @outcome = "You tied!"
        @outcome_css = "label-warning"
        @comp_img = "http://localhost:3000/assets/images/paper.png"
     else comp_choice == 2
       @computer = "Scissors"
       @outcome = "You lost!"
        @outcome_css = "label-danger"
        @comp_img = "http://localhost:3000/assets/images/scissors.png"
     end
     render("paper.html.erb")
   end


   def scissors
     @user = "Scissors"
     @user_img = "http://localhost:3000/assets/images/scissors.png"
     comp_choice = rand(3)
     if comp_choice == 0
       @computer = "Rock"
       @outcome = "You lost!"
        @outcome_css = "label-danger"
        @comp_img = "http://localhost:3000/assets/images/rock.png"
     elsif comp_choice == 1
       @computer = "Paper"
       @outcome = "You won!"
        @outcome_css = "label-success"
        @comp_img = "http://localhost:3000/assets/images/paper.png"
     else comp_choice == 2
       @computer = "Scissors"
       @outcome = "You tied!"
        @outcome_css = "label-warning"
        @comp_img = "http://localhost:3000/assets/images/scissors.png"
     end
     render("scissors.html.erb")
   end

 end
