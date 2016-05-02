class PlayController < ApplicationController
def play_rock
  @test_rock = "hi"
render("play_rock.html.erb")
end

def play_paper
  @test_paper = "HI"
render("play_paper.html.erb")
end

def play_scissors
  @test_scissors = "Hi!"
render("play_scissors.html.erb")
end

end
