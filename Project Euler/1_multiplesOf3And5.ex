defmodule MultipleOf3And5 do
  def summarizeMultiples(sum,n) when n<=1 do
    IO.puts sum
  end

  def summarizeMultiples(sum, n) do
    case (n rem 5) do
      0 ->
        sum = sum + n

      _ ->
    end
    case (n rem 3) do
      0->
        sum = sum+n
      _->
    end
    summarizeMultiples(sum,n-1)

  end



end
