clasRpsController <ApplicationController
  def rock
    @user_move = "rock"
    @computer_move=["rock","paper","scissors"].sample
    # @computer_move = @choice.select
    if @user_move == @computer_move
      @result = "tied"
      @label= "label-warning"
    elsif @computer_move == "paper"
      @result = "lost"
      @label= "label-danger"
    elsif @computer_move == "scissors"
      @result= "won"
      @label= "label-success"
    end
      render("rock.html.erb")
  end
  def paper
    @user_move = "paper"
    @computer_move=["rock","paper","scissors"].sample
    if @user_move == @computer_move
      @result = "tied"
      @label= "label-warning"
    elsif @computer_move == "rock"
      @result = "won"
      @label= "label-success"
    elsif @computer_move == "scissors"
      @result= "lost"
      @label= "label-danger"
    end
    render("paper.html.erb")
  end
  def scissors
    @user_move = "scissors"
    @computer_move=["rock","paper","scissors"].sample
    if @user_move == @computer_move
      @result = "tied"
      @label= "label-warning"
    elsif @computer_move == "rock"
      @result = "lost"
      @label="label-danger"
    elsif @computer_move == "paper"
      @result= "won"
      @label= "label-success"
    end
    render("scissors.html.erb")
  end
