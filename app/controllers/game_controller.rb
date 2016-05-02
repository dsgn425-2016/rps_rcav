  def playrock
    @usermove = "rock"
    @moves=["rock","paper","scissors"]
    @computermove = @moves.sample
    @userimage="/assets/images/rock.png"
      if @computermove=="rock"
        @result="tied"
        @image="/assets/images/rock.png"
        @label="label-warning"
      elsif @computermove=="paper"
      @result= "lost"
      @label="label-danger"
      @image="/assets/images/paper.png"
    else
      @result="won"
      @label="label-success"
      @image="/assets/images/scissors.png"
  end

  render("rps.html.erb")
end

def playpaper
  @usermove = "paper"
  @userimage= "/assets/images/paper.png"
  @moves=["rock","paper","scissors"]
  @computermove = @moves.sample

    if @computermove=="paper"
      @result="tied"
      @image="/assets/images/paper.png"
      @label="label-warning"
    elsif @computermove=="rock"
    @result= "won"
    @label="label-success"
    @image="/assets/images/rock.png"
  else
    @result="lost"
    @label="label-danger"
    @image="/assets/images/scissors.png"
end

render("rps.html.erb")
end

def playscissors
  @usermove = "scissors"
  @userimage = "/assets/images/scissors.png"
  @moves=["rock","paper","scissors"]
  @computermove = @moves.sample

    if @computermove=="scissors"
      @result="tied"
      @image="/assets/images/scissors.png"
      @label="label-warning"
    elsif @computermove=="paper"
    @result= "won"
    @label="label-success"
    @image="/assets/images/paper.png"
  else
    @result="lost"
    @label="label-danger"
    @image="/assets/images/rock.png"
end

render("rps.html.erb")
end
end
