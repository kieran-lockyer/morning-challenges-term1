# A slightly different kind of challenge this morning.

# The Company has broken the keyboard on their one and only laptop, so can’t get this bit of code to run. 
# What would the output of this code be (without running it on your own computer)? 

#  def fib(num)
#   if num < 2
#      num
#   else
#      fib(num-1) + fib(num-2)
#   end
# end
# puts fib(4)

#it would put out 1, 0, -1 and -2 a bunch of times.

 def fib(num)
  if num < 2
     num
  else
     fib(num-1) + fib(num-2)
  end
end
puts fib(4)