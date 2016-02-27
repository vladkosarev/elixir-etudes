defmodule Dijkstra do
  @doc ~S"""
    Finds the greatest common divisor (GCD) of two integers

    ## Examples

    iex> Dijkstra.gcd(2, 8)
    2

    iex> Dijkstra.gcd(14, 21)
    7

    iex> Dijkstra.gcd(125, 46)
    1

    iex> Dijkstra.gcd(120, 36)
    12

  """

  def gcd(m, n) do
    cond do
      m == n -> m
      m > n -> gcd(m - n, n)
      true -> gcd(m, n - m)
    end
  end
end
