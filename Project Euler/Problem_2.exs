defmodule EvenFibonacciNumbers do
  @moduledoc """
    Solves the following problem:

    By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

    improved fibonacci uses an approach that reduces amount of calculations needed.
    The three first numbers are (1,1,2)
    The three next are (3,5,8)
    If you continue one more time you get (13,21,34)
    If (a,b,c) = (1,1,2) then the next three are (b+c,b + 2c,2b+3c)
    This applies from (3,5,8) --> (13,21,34) aswell
    As a result of this, we only need to store two last numbers, and then calculate
    the next even number by using the previous two numbers given.
    so given (a,b), the next even number will be calculated as (a + 2b, 2a+3b)
    where b is defined as the previous even number.
  """

  def calculateNewFibonnaciNumber(sum_even,number_1,number_2) when number_2 >= 4000000 do
    IO.puts sum_even
  end
  def calculateNewFibonnaciNumber(sum_even,number_1,number_2) do
    temporary_container = number_2
    number_2 = number_1 + number_2
    number_1 = temporary_container

    cond do
      (rem(number_2,2) == 0) ->
        sum_even = sum_even + number_2
      true ->
        ##nothing
    end
    calculateNewFibonnaciNumber(sum_even,number_1,number_2)
  end



  def improvedFibonacci(sum_even,number_1,number_2) when number_2 >= 4000000 do
    IO.puts sum_even
  end
  def improvedFibonacci(sum_even,number_1,number_2) do
    temporary_container = number_2
    number_2 = 2*number_1 + 3*number_2
    number_1 = number_1 + 2 * temporary_container
    sum_even = sum_even + tem
    improvedFibonacci(sum_even,number_1,number_2)
  end

end

EvenFibonacciNumbers.calculateNewFibonnaciNumber(0,1,1)
EvenFibonacciNumbers.improvedFibonacci(0,1,2)
