class GameController < ApplicationController

def home

  render("home.html.erb")
end


def stone

  render("stone.html.erb")
end


def notepad

    render("notepad.html.erb")
end


def cutters

    render("cutters.html.erb")
end

end
