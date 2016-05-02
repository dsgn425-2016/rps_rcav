class RpsController <ApplicationController

  def rock
    #Define moves -> associate images -> display results
    moves = ["Rock","Paper","Scissors"]

    @player_move = moves[0]
    @computer_move = moves.sample

    if @player_move == moves[0]
      then @player_image = "/assets/images/rock.png"
    elsif @player_move == moves[1]
      then @player_image = "/assets/images/paper.png"
    elsif @player_move == moves[2]
      then @player_image = "/assets/images/scissors.png"
    end

    if @computer_move == moves[0]
      then @computer_image = "/assets/images/rock.png"
    elsif @computer_move == moves[1]
      then @computer_image = "/assets/images/paper.png"
    elsif @computer_move == moves[2]
      then @computer_image = "/assets/images/scissors.png"
    end

    if @computer_move == @player_move
      then
      @result = "You tie!"
      @sign = "label label-warning"
      @panel_user = "panel panel-success"
      @panel_computer = "panel panel-danger"
    elsif @player_move == moves[0] && @computer_move == moves[2]
      then
      @result = "You win!"
      @sign = "label label-success"
      @panel_user = "panel panel-success"
      @panel_computer = "panel panel-danger"
    elsif @player_move == moves[0] && @computer_move == moves[1]
      then
      @result = "You lost!"
      @sign = "label label-danger"
      @panel_user = "panel panel-success"
      @panel_computer = "panel panel-danger"
    elsif @player_move == moves[1] && @computer_move == moves[0]
      then
      @result = "You win!"
      @sign = "label label-success"
      @panel_user = "panel panel-success"
      @panel_computer = "panel panel-danger"
    elsif @player_move == moves[1] && @computer_move == moves[2]
      then
      @result = "You lost!"
      @sign = "label label-danger"
      @panel_user = "panel panel-success"
      @panel_computer = "panel panel-danger"
    elsif @player_move == moves[2] && @computer_move == moves[0]
      then
      @result = "You lost!"
      @sign = "label label-danger"
      @panel_user = "panel panel-success"
      @panel_computer = "panel panel-danger"
    elsif @player_move == moves[2] && @computer_move == moves[1]
      then
      @result = "You win!"
      @sign = "label label-success"
      @panel_user = "panel panel-success"
      @panel_computer = "panel panel-danger"
    end
    render("rock.html.erb")
  end


  def paper
    moves = ["Rock","Paper","Scissors"]

    @player_move = moves[1]
    @computer_move = moves.sample

    if @player_move == moves[0]
      then @player_image = "/assets/images/rock.png"
    elsif @player_move == moves[1]
      then @player_image = "/assets/images/paper.png"
    elsif @player_move == moves[2]
      then @player_image = "/assets/images/scissors.png"
    end

    if @computer_move == moves[0]
      then @computer_image = "/assets/images/rock.png"
    elsif @computer_move == moves[1]
      then @computer_image = "/assets/images/paper.png"
    elsif @computer_move == moves[2]
      then @computer_image = "/assets/images/scissors.png"
    end

    if @computer_move == @player_move
      then
      @result = "You tie!"
      @sign = "label label-warning"
      @panel_user = "panel panel-success"
      @panel_computer = "panel panel-danger"
    elsif @player_move == moves[0] && @computer_move == moves[2]
      then
      @result = "You win!"
      @sign = "label label-success"
      @panel_user = "panel panel-success"
      @panel_computer = "panel panel-danger"
    elsif @player_move == moves[0] && @computer_move == moves[1]
      then
      @result = "You lost!"
      @sign = "label label-danger"
      @panel_user = "panel panel-success"
      @panel_computer = "panel panel-danger"
    elsif @player_move == moves[1] && @computer_move == moves[0]
      then
      @result = "You win!"
      @sign = "label label-success"
      @panel_user = "panel panel-success"
      @panel_computer = "panel panel-danger"
    elsif @player_move == moves[1] && @computer_move == moves[2]
      then
      @result = "You lost!"
      @sign = "label label-danger"
      @panel_user = "panel panel-success"
      @panel_computer = "panel panel-danger"
    elsif @player_move == moves[2] && @computer_move == moves[0]
      then
      @result = "You lost!"
      @sign = "label label-danger"
      @panel_user = "panel panel-success"
      @panel_computer = "panel panel-danger"
    elsif @player_move == moves[2] && @computer_move == moves[1]
      then
      @result = "You win!"
      @sign = "label label-success"
      @panel_user = "panel panel-success"
      @panel_computer = "panel panel-danger"
    end
    render("paper.html.erb")
  end

  def scissors
    moves = ["Rock","Paper","Scissors"]

    @player_move = moves[2]
    @computer_move = moves.sample

    if @player_move == moves[0]
      then @player_image = "/assets/images/rock.png"
    elsif @player_move == moves[1]
      then @player_image = "/assets/images/paper.png"
    elsif @player_move == moves[2]
      then @player_image = "/assets/images/scissors.png"
    end

    if @computer_move == moves[0]
      then @computer_image = "/assets/images/rock.png"
    elsif @computer_move == moves[1]
      then @computer_image = "/assets/images/paper.png"
    elsif @computer_move == moves[2]
      then @computer_image = "/assets/images/scissors.png"
    end

    if @computer_move == @player_move
      then
      @result = "You tie!"
      @sign = "label label-warning"
      @panel_user = "panel panel-success"
      @panel_computer = "panel panel-danger"
    elsif @player_move == moves[0] && @computer_move == moves[2]
      then
      @result = "You win!"
      @sign = "label label-success"
      @panel_user = "panel panel-success"
      @panel_computer = "panel panel-danger"
    elsif @player_move == moves[0] && @computer_move == moves[1]
      then
      @result = "You lost!"
      @sign = "label label-danger"
      @panel_user = "panel panel-success"
      @panel_computer = "panel panel-danger"
    elsif @player_move == moves[1] && @computer_move == moves[0]
      then
      @result = "You win!"
      @sign = "label label-success"
      @panel_user = "panel panel-success"
      @panel_computer = "panel panel-danger"
    elsif @player_move == moves[1] && @computer_move == moves[2]
      then
      @result = "You lost!"
      @sign = "label label-danger"
      @panel_user = "panel panel-success"
      @panel_computer = "panel panel-danger"
    elsif @player_move == moves[2] && @computer_move == moves[0]
      then
      @result = "You lost!"
      @sign = "label label-danger"
      @panel_user = "panel panel-success"
      @panel_computer = "panel panel-danger"
    elsif @player_move == moves[2] && @computer_move == moves[1]
      then
      @result = "You win!"
      @sign = "label label-success"
      @panel_user = "panel panel-success"
      @panel_computer = "panel panel-danger"
    end
    render("scissors.html.erb")
  end

end
