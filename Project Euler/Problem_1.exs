defmodule MultipleOf3And5 do
  @moduledoc """
    Solves the following problem:

    Find the sum of all the multiples of 3 or 5 below 1000.
  """
  def summarizeMultiples(sum,1) do
    IO.puts sum
  end

  def summarizeMultiples(sum, n) do
    cond do
      (rem(n,5) == 0) ->
        sum = sum + n
      (rem(n,3) == 0) ->
        sum = sum+n
      true ->
    end
    summarizeMultiples(sum,n-1)

  end
end
