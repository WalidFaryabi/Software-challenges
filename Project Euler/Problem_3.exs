defmodule LargestPrimeFactor do
  @moduledoc """
  What is the largest prime factor of the number 600851475143 ?
  Two methods implemented, brute force and an algorithm that always
  finds the smallest factor of a number. When the smallest factor of a
  number is that number, then the greatest prime factor is found
  """

  defp greatestDivisor(number,current_divisor,largest_divisor) do

    case rem(round(number),current_divisor) do

      0->
        cond do
        (current_divisor > largest_divisor) ->
          largest_divisor = current_divisor
        (current_divisor == number) ->
          largest_divisor = current_divisor
          IO.puts "new divisor put"
          largest_divisor
        true->

        end
        number = number/current_divisor
        current_divisor = 2
        greatestDivisor(number,current_divisor,largest_divisor)
      _->
        current_divisor = current_divisor + 1
        greatestDivisor(number,current_divisor,largest_divisor)
      end



    end


  def improvedPrimeFinder(number) do
    current_divisor = 2
    largest_divisor = 0
    IO.puts greatestDivisor(number,current_divisor,largest_divisor)
  end



  ##brute force
  defp checkIfPrime(evaluated_number,current_iterate) when current_iterate <= 1 do
    true
  end
  defp checkIfPrime(evaluated_number,current_iterate) do
    cond do
      rem(evaluated_number,current_iterate) == 0 ->
        false
      true->
        checkIfPrime(evaluated_number,current_iterate-1)
      end
  end
  def findBiggestPrime(number,n,current_biggest) when n <= 1 do
    IO.puts current_biggest
  end
  def findBiggestPrime(number,n,current_biggest) do
    ##First check if the number is a factor
    cond do
      rem(number,n) == 0 ->

        cond do
          checkIfPrime(n,n-1) == true ->
            current_biggest = n
          true->
            findBiggestPrime(number,n-1,current_biggest)
        end
      true ->
        findBiggestPrime(number,n-1,current_biggest)
      end
  end
end
IO.puts LargestPrimeFactor.findBiggestPrime(13195,13195-1,0 )

#Io.puts LargestPrimeFactor.improvedPrimeFinder(13195)
Io.puts LargestPrimeFactor.improvedPrimeFinder(600851475143)
#IO.puts LargestPrimeFactor.findBiggestPrime(600851475143,600851475143-1,0 )
