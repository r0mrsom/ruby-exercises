def factorial(num)
  # write a recursive method for calculating the [factorial](https://simple.wikipedia.org/wiki/Factorial) of a number
  if num > 0
    num * factorial(num - 1)
  elsif num == 0
    1
  else
    nil
  end
end
