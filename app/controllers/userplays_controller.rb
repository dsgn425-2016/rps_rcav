class UserplaysController <ApplicationController
  def rock
    @play = "Hi rock"
    render("rock.html.erb")
  end

  def paper
    @play = "Hi rock"
    render("paper.html.erb")
  end

  def scissors
    @play = "Hi rock"
    render("scissors.html.erb")
  end


end
