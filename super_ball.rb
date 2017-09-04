=begin
Regular Ball Super Ball

Create a class Ball.

Ball objects should accept one argument for "ball type" when 
instantiated.

If no arguments are given, ball objects should instantiate 
with a "ball type" of "regular."

ball1 = Ball.new
ball2 = Ball.new "super"
ball1.ball_type  #=> "regular"
ball2.ball_type  #=> "super"
=end


class Ball
  attr_reader :ball_type # better syntax

  def initialize(ball_type = "regular")
      @ball_type = ball_type
  end
  
=begin
  def ball_type
   @ball_type
  end
=end
    
end

puts Ball.new("super").ball_type
puts Ball.new.ball_type
